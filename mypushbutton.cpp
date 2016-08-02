#include "mypushbutton.h"
MyPushButton::MyPushButton(QWidget*parent):QPushButton(parent)
{
}
MyPushButton::~MyPushButton()
{

}

void MyPushButton::focusInEvent(QFocusEvent * e)
{
    qDebug()<<"focus in";
  setStyleSheet("background-color: rgb(170, 0, 255);");
    //setText("fdfd");
}
void MyPushButton::focusOutEvent(QFocusEvent *e)
{
    qDebug()<<"focus out";
 setStyleSheet("background-color: rgb(250, 250, 255);");
       // setText("ll");

}

