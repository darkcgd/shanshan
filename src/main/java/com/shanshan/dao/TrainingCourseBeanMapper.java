package com.shanshan.dao;

import com.shanshan.bean.TrainingCourseBean;
import com.shanshan.bean.TrainingCourseBeanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TrainingCourseBeanMapper {
    long countByExample(TrainingCourseBeanExample example);

    int deleteByExample(TrainingCourseBeanExample example);

    int deleteByPrimaryKey(Integer trainingCourseId);

    int insert(TrainingCourseBean record);

    int insertSelective(TrainingCourseBean record);

    List<TrainingCourseBean> selectByExample(TrainingCourseBeanExample example);

    TrainingCourseBean selectByPrimaryKey(Integer trainingCourseId);

    int updateByExampleSelective(@Param("record") TrainingCourseBean record, @Param("example") TrainingCourseBeanExample example);

    int updateByExample(@Param("record") TrainingCourseBean record, @Param("example") TrainingCourseBeanExample example);

    int updateByPrimaryKeySelective(TrainingCourseBean record);

    int updateByPrimaryKey(TrainingCourseBean record);
}