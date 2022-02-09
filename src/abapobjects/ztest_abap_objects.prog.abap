*&---------------------------------------------------------------------*
*& Report ZTEST_ABAP_OBJECTS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztest_abap_objects.

CLASS lcl_report DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS main.
ENDCLASS.

CLASS lcl_report IMPLEMENTATION.
  METHOD main.
    MESSAGE 'Hello from ABAP Objects!' TYPE 'I'.
  ENDMETHOD.
ENDCLASS.

*----------------------------------------------------------------------*
* START-OF-SELECTION                                                   *
*--------------------------------------------------------------------*
START-OF-SELECTION.
  lcl_report=>main( ).
