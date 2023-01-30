extern "C"{
  #include "../headers/Utils.h"
}
#include "../headers/BackEnd.h"

BackEnd::BackEnd(QObject *parent) : QObject(parent)
{
}

void BackEnd::connectToServer(){
  if (connect_to_server("127.0.0.1", 5500))
  {
    emit connectSuccess();
  }
  else
  {
    emit connectFail();
  }
}

void BackEnd::disconnectToServer(){
  disconnect_to_server();
}

void BackEnd::signIn(QString username, QString password){
  int loginStatus = login(username.toLocal8Bit().data(), password.toLocal8Bit().data());
  if (loginStatus == LOGIN_SUCCESS)
  {
    emit loginSuccess();
  }
  else if (loginStatus == LOGGED_IN)
  {
    emit loggedIn();
  }
  else if (loginStatus == LOGIN_FAIL)
  {
    emit loginFail();
  }
}