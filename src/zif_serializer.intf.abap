INTERFACE zif_serializer
  PUBLIC.

  METHODS serialize
    IMPORTING
      !DATA TYPE REF TO data
    RETURNING
      VALUE(RESULT) TYPE xstring
    RAISING
      cx_sy_dyn_call_illegal_type.

  METHODS deserialize
    IMPORTING
      !DATA TYPE xstring
    RETURNING
      VALUE(RESULT) TYPE REF TO data
    RAISING
      cx_sy_import_mismatch_error
      cx_sy_struct_creation
      cx_sy_table_creation
      cx_sy_dyn_call_illegal_type
      cx_parameter_invalid_range.

ENDINTERFACE.
