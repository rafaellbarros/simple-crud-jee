/* validator form cliente */
$(document).ready(function(){
  var validator = $("#formCliente").bootstrapValidator({
    feedbackIcons: {
      valid: "glyphicon glyphicon-ok",
      invalid: "glyphicon glyphicon-remove",
      validating: "glyphicon glyphicon-refresh"
    },
    fields : {
      nome :{
        validators :{
          notEmpty : {
            message: "Nome é obrigatório"
          },
          regexp : {
            regexp: /^[a-zà-úA-ZÀ-Ú]+$/i,
            message: "Por favor, somente letras"
          }
        }
      },
      sobrenome :{
          validators :{
            notEmpty : {
              message: "Sobrenome é obrigatório"
            },
            regexp : {
              regexp: /^[a-zà-úA-ZÀ-Ú]+$/i,
              message: "Por favor, somente letras"
            }
          }
        },
      email :{
        message : "Email é obrigatório",
        validators : {
          notEmpty : {
            message: "Por favor, forneça um email"
          },
          stringLength: {
            min: 6,
            max: 35,
            message: "Email deve ter entre 6 e 35 caracteres"
          },

          emailAddress: {
            message: "Email inválido"
          }
        }
      },
    }
  }).on("success.form.bv", function (e) {
		e.preventDefault();
	});
});

/* validator form atualizarCliente */
$(document).ready(function(){
  var validator = $("#formAtualizarCliente").bootstrapValidator({
    feedbackIcons: {
      valid: "glyphicon glyphicon-ok",
      invalid: "glyphicon glyphicon-remove",
      validating: "glyphicon glyphicon-refresh"
    },
    fields : {
      nome :{
        validators :{
          notEmpty : {
            message: "Nome é obrigatório"
          },
          regexp : {
            regexp: /^[a-zà-úA-ZÀ-Ú]+$/i,
            message: "Por favor, somente letras"
          }
        }
      },
      sobrenome :{
          validators :{
            notEmpty : {
              message: "Sobrenome é obrigatório"
            },
            regexp : {
              regexp: /^[a-zà-úA-ZÀ-Ú]+$/i,
              message: "Por favor, somente letras"
            }
          }
        },
      email :{
        message : "Email é obrigatório",
        validators : {
          notEmpty : {
            message: "Por favor, forneça um email"
          },
          stringLength: {
            min: 6,
            max: 35,
            message: "Email deve ter entre 6 e 35 caracteres"
          },

          emailAddress: {
            message: "Email inválido"
          }
        }
      },
    }
  }).on("success.form.bv", function (e) {
		e.preventDefault();
	});
});



