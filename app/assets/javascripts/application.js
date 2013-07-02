// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

jQuery(function($) {
	$("#date").mask("99/99/9999");
	$("#cpf").mask("999.999.999-99")
	$("#tin").mask("99-9999999");
	$("#ssn").mask("999-99-9999");
	$("#cnpj").mask("99.999.999/9999-99")
	$("#cep").mask("99.999-999")
	
});


	
function getEndereco() {
    if ($.trim($("#cep").val()) != "") {
  
      $("#lbcep").html(" Pesquisando...")

      $.getScript("http://cep.republicavirtual.com.br/web_cep.php?formato=javascript&cep="+$("#cep").val(), function(){
     
    if(resultadoCEP["resultado"]){
        $("#endereco_tipo").val(unescape(resultadoCEP["tipo_logradouro"]));
        $("#endereco").val(unescape(resultadoCEP["logradouro"]));
        $("#bairro").val(unescape(resultadoCEP["bairro"]));
        $("#cidade").val(unescape(resultadoCEP["cidade"]));
        $("#estado").val(unescape(resultadoCEP["uf"]));
        $("#pais").val(unescape("Brasil"));
        $("#endereco_numero").focus();
       } else {
          alert("Cep não encontrado.");
       }
       $("#lbcep").html(" CEP")});
    }
    else {
        alert("Informe um cep.");
    }
}

	function showDiv(id, value) {
		objDiv = document.getElementById(id);
		if (value)
			objDiv.style.display = "";
		else
			objDiv.style.display = "none";
	}

  function showDivPessoa() {
    radioFisica = document.getElementById("venda_tipo_cliente_1");
    radioJuridica = document.getElementById("venda_tipo_cliente_0");
    divPessoaFisica = document.getElementById("pessoa_fisica");
    divPessoaJuridica = document.getElementById("pessoa_juridica");

    if (radioFisica.checked){
      divPessoaFisica.style.display = "";
      divPessoaJuridica.style.display = "none";
    }else if(radioJuridica.checked){
      divPessoaFisica.style.display = "none";
      divPessoaJuridica.style.display = "";
    }
  }
       
  function showDivServico(){
    radioCruzeiro = document.getElementById("venda_services_type_1");
    radioEvento = document.getElementById("venda_services_type_2");
    radioPacote = document.getElementById("venda_services_type_3");
    radioPasseio = document.getElementById("venda_services_type_4");

    divCruzeiro = document.getElementById("cruzeiro");
    divEvento = document.getElementById("evento");
    divPacote = document.getElementById("pacote");
    divPasseio = document.getElementById("passeio");

    if (radioCruzeiro.checked){
      divCruzeiro.style.display = "";
      divEvento.style.display = "none";
      divPacote.style.display = "none";
      divPasseio.style.display = "none";
    }else if(radioEvento.checked){
      divCruzeiro.style.display = "none";
      divEvento.style.display = "";
      divPacote.style.display = "none";
      divPasseio.style.display = "none";
    }else if(radioPacote.checked){
      divCruzeiro.style.display = "none";
      divEvento.style.display = "none";
      divPacote.style.display = "";
      divPasseio.style.display = "none";
    }else if(radioPasseio.checked){
      divCruzeiro.style.display = "none";
      divEvento.style.display = "none";
      divPacote.style.display = "none";
      divPasseio.style.display = "";
    }
  }

        
   /*     
        var input = 0; 
function mais() { 
document.getElementById("aki").innerHTML+="<label class='text optional control-label' for='servico_cruzeiro_quartos_attributes_"+input+"_descricao'>Descricao</label>"
        +"<textarea class='text optional' cols='40' id='servico_cruzeiro_quartos_attributes_"+input+"_descricao' \n\
         name='servico_cruzeiro[quartos_attributes]["+input+"][descricao]' rows='20'></textarea>"+
            "<div class='input integer optional servico_cruzeiro_quartos_nroPessoa'><label class='integer optional control-label' for='servico_cruzeiro_quartos_attributes_"+input+"_nroPessoa'>Nropessoa</label><input class='numeric integer optional' id='servico_cruzeiro_quartos_attributes_"+input+"_nroPessoa' name='servico_cruzeiro[quartos_attributes]["+input+"][nroPessoa]' step='1' type='number' /></div>"
           +"<div class='input decimal optional servico_cruzeiro_quartos_preco'><label class='decimal optional control-label' for='servico_cruzeiro_quartos_attributes_"+input+"_preco'>Preco</label><input class='numeric decimal optional' id='servico_cruzeiro_quartos_attributes_"+input+"_preco' name='servico_cruzeiro[quartos_attributes]["+input+"][preco]' step='any' type='number' /></div></div>"        
            ;
            document.form.campo.value=""; 
input++; 
} 
*/

