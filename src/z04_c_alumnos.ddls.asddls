@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS C Alumnos DSZ'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity Z04_C_ALUMNOS as select from Z04_R_ALUMNOS
    association [0..1] to ZC_04CIUDADES as _Ciudad on $projection.IdCiudad = _Ciudad.ID
{
    key Id,
    Nombre,
    Apellidos,
    Edad,
    zzpizarrin, 
    zzgenero,   
    IdCiudad,
    @EndUserText.label: 'Tipo'
    case Apellidos
    when 'de Ancos' then 'P'
    else 'A'
    end as Tipo,
    CreatedBy,
    CreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    _Ciudad
}
