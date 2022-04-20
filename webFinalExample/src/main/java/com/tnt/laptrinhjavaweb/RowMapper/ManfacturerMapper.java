package com.tnt.laptrinhjavaweb.RowMapper;

import com.tnt.laptrinhjavaweb.model.ManfacturerModel;
import java.sql.ResultSet;

public class ManfacturerMapper implements IRowMapper<ManfacturerModel>{

    @Override
    public ManfacturerModel mapRow(ResultSet resultSet)  {
        try{
            ManfacturerModel manfacturerModel = new ManfacturerModel();
            manfacturerModel.setId(resultSet.getLong("id"));
            manfacturerModel.setName(resultSet.getString("name"));
            manfacturerModel.setAddress(resultSet.getString("address"));
            manfacturerModel.setImage(resultSet.getString("image"));
            manfacturerModel.setDescription(resultSet.getString("description"));
            if(resultSet.getTimestamp("modifieddate") != null) {
                manfacturerModel.setModifiedDate(resultSet.getTimestamp("modifieddate"));
            }
            if(resultSet.getString("modifiedby") != null) {
               manfacturerModel.setModifiedBy(resultSet.getString("modifiedby"));
            }
            return manfacturerModel;
        }catch (Exception e){

        }

        return null;
    }
}
