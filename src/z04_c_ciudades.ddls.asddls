@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Ciudades'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity Z04_C_CIUDADES as select from Z04_R_CIUDADES
association [1..*] to Z04_C_ALUMNOS as _Alumno on $projection.Id = _Alumno.IdCiudad
{
    key Id,
    Ciudad,
    IdPais,
    avg ( _Alumno.Edad as abap.dec(11,1) ) as MediaEdad,
    CreatedBy,
    CreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    _Alumno
}
group by
    Id,
    Ciudad,
    IdPais,
    CreatedBy,
    CreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt

