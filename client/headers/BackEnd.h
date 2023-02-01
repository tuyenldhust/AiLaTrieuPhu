#ifndef BACKEND_H
#define BACKEND_H
#include <QObject>

extern "C" {
  #include "Utils.h"
}

class BackEnd : public QObject
{
    Q_OBJECT
public:
    // static char server_ip[16];
    // static int server_port;
    explicit BackEnd(QObject *parent = nullptr);
    Q_INVOKABLE void connectToServer();
    Q_INVOKABLE void disconnectToServer();
    Q_INVOKABLE void signIn(QString username, QString password);
    Q_INVOKABLE void signUp(QString username, QString password);

signals:
    void connectSuccess();
    void connectFail();
    void loginSuccess();
    void loggedIn();
    void loginFail();
    void signupSuccess();
    void accountExist();
};
#endif // BACKEND_H