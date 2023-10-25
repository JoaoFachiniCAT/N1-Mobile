import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class Database
{
  void Start() async
  {
    try
    {
      Firebase.initializeApp();

      //configuração de inicialização do firebase
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      }
    catch(e)
    {
      print(e);
    }
  }

  void Tentativa()
  {
    try
    {
      FirebaseFirestore.instance.collection('usuarios').doc('alunos')
          .set({'Nome': 'Tassiana', 'Sobrenome': 'Kautzmann'});
    }
    catch(e)
    {
      print(e);
    }
  }
}