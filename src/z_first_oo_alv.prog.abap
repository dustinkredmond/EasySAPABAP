*&---------------------------------------------------------------------*
*& Report Z_FIRST_OO_ALV                                               *
*&---------------------------------------------------------------------*
*& Created: 02/08/2022                                                 *
*& By: Dustin K. Redmond (dustin@dustinredmond.com)                    *
*& For: YouTube Channel - Easy SAP ABAP                                *
*&---------------------------------------------------------------------*
*& Created to demonstrate the CL_SALV_TABLE class                      *
*&---------------------------------------------------------------------*
REPORT z_first_oo_alv.

*----------------------------------------------------------------------*
* Global data                                                          *
*----------------------------------------------------------------------*
DATA: table   TYPE REF TO cl_salv_table, " ALV Reference Variable
      t_spfli TYPE TABLE OF spfli.       " Internal table, flight data

*----------------------------------------------------------------------*
* START-OF-SELECTION                                                   *
*----------------------------------------------------------------------*
START-OF-SELECTION.
  TRY.
      cl_salv_table=>factory(
        IMPORTING
          r_salv_table   = table
        CHANGING
          t_table        = t_spfli ).
    CATCH cx_salv_msg.
      MESSAGE 'Something went wrong...' TYPE 'E'.
  ENDTRY.

  table->display( ).
