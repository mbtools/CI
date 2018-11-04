INTERFACE zif_abapgit_ci_definitions
  PUBLIC .


  TYPES:
    BEGIN OF ty_repo,
      name      TYPE string,
      clone_url TYPE string,
    END OF ty_repo,
    tty_repo TYPE STANDARD TABLE OF ty_repo
             WITH NON-UNIQUE DEFAULT KEY .

  TYPES: ty_status TYPE char6.

  TYPES:
    tty_result_list TYPE STANDARD TABLE OF zabapgit_ci_result
                         WITH NON-UNIQUE DEFAULT KEY,
    BEGIN OF ty_result,
      ci_has_errors TYPE abap_bool,
      timestamp     TYPE timestampl,
      list          TYPE tty_result_list,
    END OF ty_result.

  TYPES:
    BEGIN OF ty_options,
      push_results_to_git      TYPE abap_bool,
      destination_git_repo_url TYPE string,
    END OF ty_options.

  CONSTANTS:
    BEGIN OF co_status,
      undefined TYPE char6 VALUE ' ',
      ok        TYPE char6 VALUE 'OK',
      not_ok    TYPE char6 VALUE 'NOT_OK',
    END OF co_status.

ENDINTERFACE.