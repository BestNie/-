package service;

import Dao.DormBuildDao;
import domain.DormBuild;
import domain.Page;
import until.StringUtil;

import java.sql.SQLException;
import java.util.List;

public class DormBuildService {
    public Page<DormBuild> findDorBuildByPage(String searchName , String _currentPage, String _rows) throws SQLException {
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);
        if(currentPage <= 0){
            currentPage = 1;
        }

        Page<DormBuild> page = new Page<DormBuild>();
        page.setCurrentPage(currentPage);
        page.setRows(rows);
        page.setSearchName(searchName);
        DormBuildDao sd = new DormBuildDao();
        int totalCount=1;
        if (StringUtil.isEmpty(searchName)){
            //调用dao查询总记录数
            totalCount = sd.findTotalCount(searchName);
            page.setTotalCount(totalCount);
        }else {
            totalCount = sd.findTotalCount();
            page.setTotalCount(totalCount);
        }


        //计算总页码
        int totalPage = (totalCount % rows) == 0 ? totalCount / rows : (totalCount / rows) + 1;
        page.setTotalPage(totalPage);

        if(currentPage >= totalPage){
            currentPage = totalPage;
            page.setCurrentPage(currentPage);
        }

        //调用dao查询List集合
        //开始计算索引
        int start = 0;
        if (currentPage > 1){
            start = (currentPage - 1) * rows;
        }
        List<DormBuild> list=null;
        list = sd.findDroWthName(searchName,start, rows);
        page.setList(list);
        return page;
    }
}
