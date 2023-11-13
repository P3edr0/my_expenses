import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddExpenseCard {
  final DateFormat date = DateFormat('EEEE - d MMMM y');
  Future buildDialog(context) async {
    return await showDialog(
      barrierDismissible: true,
        context: context,
        builder: ((context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: SingleChildScrollView(
              child: Container(
                padding: const  EdgeInsets.all(10),
                decoration: BoxDecoration(
                  
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10)),
                  height: 500,
                  width: 200,
                  
                  child: Column(  children:  [
                     
            
               const Text(
                    "Adicionar Despesa",
                   style:  TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      overflow: TextOverflow.clip),
                                ),
                  
                 const   Text(
                "Nome",
                    style:   TextStyle(
                                      fontSize: 16,
                                fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      overflow: TextOverflow.clip),
                                
                  ),
            TextFormField(decoration: InputDecoration(,hintText: 'Nome',fillColor: Colors.green, hintStyle: TextStyle(color: Colors.white),hoverColor: Colors.green,focusColor:Colors.green )),
            
                   const   Text(
                "Descrição",
                    style:   TextStyle(
                                      fontSize: 16,
                                fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      overflow: TextOverflow.clip),
                                
                  ),
            TextFormField(),
              
                 const   Text(
                "Data",
                    style:   TextStyle(
                                      fontSize: 16,
                                fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      overflow: TextOverflow.clip),
                                
                  ),
            TextFormField(),
            
                    
                  const SizedBox(height: 10),
            
              
                 const   Text(
                "Valor",
                    style:   TextStyle(
                                      fontSize: 16,
                                fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      overflow: TextOverflow.clip),
                                
                  ),
            TextFormField(),
            
                    
                 const   Text(
                "Forma de pagamento",
                    style:   TextStyle(
                                      fontSize: 16,
                                fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      overflow: TextOverflow.clip),
                                
                  ),
            TextFormField(),
            
                  TextButton(onPressed: ()=> Navigator.pop(context), child: Container( padding:const EdgeInsets.symmetric(horizontal: 40, vertical: 8), decoration: 
                  
            
                BoxDecoration(
                      
                    
                            borderRadius: BorderRadius.circular(10),
                   color: Colors.white),
                   
                   child:const Text("Salvar", style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      overflow: TextOverflow.clip),
                                ),) 
                  )],
                  
                  ),
            
            
                ),
            ) ,
                
             
          );
        }));
  }
}
