jQuery ->
  $('#tabelaData').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: false
    bPaginate: true
    bRetrieve: true
    bDestroy: true
    $.fn.dataTableExt.oJUIClasses
    sAjaxSource: $('#tabelaData')