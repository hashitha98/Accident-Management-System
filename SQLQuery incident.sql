create proc sp_fileupload 
    @driverName VARCHAR(50), 
    @vehicleNumber VARCHAR(50), 
    @contactNumber INT , 
    @vehicleType VARCHAR(50), 
    @insuranceCompany VARCHAR(50), 
    @location VARCHAR(50), 
    @details VARCHAR(50), 
    @images VARCHAR(100)
as
begin
      insert into IncidentDetails(driverName,vehicleNumber,contactNumber,vehicleType,insuranceCompany,location,details,images)
      values(@DriverName,@VehicleNumber,@ContactNumber,@Vehicletype,@InsuranceCompany,@Location,@Details,@images)
end

create proc usp_incident_get
as
begin
select * from IncidentDetails
end

create proc usp_incident_edit
@Id int
as
begin
select * from IncidentDetails where Id=@Id
end

create proc usp_incident_update
    @Id int,
    @driverName VARCHAR(50), 
    @vehicleNumber VARCHAR(50), 
    @contactNumber INT , 
    @vehicleType VARCHAR(50), 
    @insuranceCompany VARCHAR(50), 
    @location VARCHAR(50), 
    @details VARCHAR(50), 
    @images VARCHAR(100)
as
begin
      update IncidentDetails set driverName=@driverName, vehicleNumber=@vehicleNumber, contactNumber=@contactNumber, vehicleType=@vehicleType, insuranceCompany=@insuranceCompany, location=@location,details=@details, images=@images
      where Id=@Id
end
