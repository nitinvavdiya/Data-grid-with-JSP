/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var editor; // use a global for the submit and return data rendering in the examples
 
$(document).ready(function() {
    editor = new $.fn.dataTable.Editor( {
        ajax: "GetData.jsp",
        table: "#mytbl",
        fields: [ {
                label: "ID:",
                name: "id"
            }, {
                label: "Name:",
                name: "name"
            }, {
                label: "Email:",
                name: "email"
            }
        ]
    } );
 
    $('#example').DataTable( {
        dom: "Tfrtip",
        ajax: "GetData.jsp",
        columns: [
            { data: "id" },
            { data: "name" },
            { data: "emai" }
        ],
        tableTools: {
            sRowSelect: "os",
            aButtons: [
                { sExtends: "editor_create", editor: editor },
                { sExtends: "editor_edit",   editor: editor },
                { sExtends: "editor_remove", editor: editor }
            ]
        }
    } );
} );


