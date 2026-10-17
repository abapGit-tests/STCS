CLASS zcl_abapgit_stcs_task_2 DEFINITION
  PUBLIC
  INHERITING FROM cl_stctm_task_base
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor.
  PROTECTED SECTION.
    METHODS execute REDEFINITION.
ENDCLASS.

CLASS zcl_abapgit_stcs_task_2 IMPLEMENTATION.
  METHOD constructor.
    super->constructor(
      iv_component   = 'ABAPGIT'
      iv_description = 'Second STCS serialization test task'
      iv_necessary   = if_stctm_task=>c_necessary-necessary ).
  ENDMETHOD.

  METHOD execute.
    ir_log->add_text( i_text = 'Second STCS serialization test task completed' ).
  ENDMETHOD.
ENDCLASS.
