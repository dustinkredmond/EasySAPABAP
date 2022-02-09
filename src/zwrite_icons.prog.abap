*&---------------------------------------------------------------------*
*& Report ZWRITE_ICONS
*&---------------------------------------------------------------------*
*& First ABAP Program
*&---------------------------------------------------------------------*
REPORT ZWRITE_ICONS NO STANDARD PAGE HEADING.

WRITE / 'All good:'.
WRITE icon_green_light AS ICON.

WRITE / 'Warning:'.
WRITE icon_yellow_light AS ICON.

WRITE / 'Something is wrong:'.
WRITE icon_red_light AS ICON.
