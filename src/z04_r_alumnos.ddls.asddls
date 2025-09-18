@AbapCatalog: { 
    dataMaintenance: #RESTRICTED, 
    viewEnhancementCategory: [#PROJECTION_LIST], 
    extensibility.dataSources: [ 'Alumnos' ], 
    extensibility.elementSuffix: 'ZEM'
    }
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS R Alumnos DSZ'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z04_R_ALUMNOS as select from z04_alumnos as Alumnos
{
    key id as Id,
    nombre as Nombre,
    apellidos as Apellidos,
    edad as Edad,
    id_ciudad as IdCiudad,
    created_by as CreatedBy,
    created_at as CreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt
}
