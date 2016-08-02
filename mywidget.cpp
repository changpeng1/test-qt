#include "mywidget.h"
#include "ui_mywidget.h"
#include <QDebug>
#include <QMap>
#include <QMouseEvent>
MyWidget::MyWidget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::MyWidget)
{
    ui->setupUi(this);
  // ui->pushButton->setFocus();
  //  ui->pushButton->setDefault(true);
    current_focus = -1;
    m.insert(0,ui->pushButton);
    m.insert(1,ui->pushButton_2);

 //   ui->pushButton->installEventFilter(this);
 //   ui->pushButton_2->installEventFilter(this);
    this->installEventFilter(this);
}

MyWidget::~MyWidget()
{
    delete ui;
}
bool MyWidget::eventFilter(QObject *obj, QEvent *event)
{
    if(obj==ui->pushButton)
    {
        if(event->type() == QEvent::KeyPress)
            qDebug()<<"aaaaa";

    }
    else if(obj == ui->pushButton_2)
    {
        if(event->type() == QEvent::KeyPress)
            qDebug()<<"bbbbbb";
    }
    else if(obj == this)
    {
        if(event->type() == QEvent::KeyPress)
            qDebug()<<"dddd";
        else if(event->type() == QEvent::KeyRelease)
            qDebug()<<"eeee";
    }
    return QWidget::eventFilter(obj,event);
}
void MyWidget::keyPressEvent(QKeyEvent *event)
{
   // qDebug()<<"key pressed";
    switch(event->key())
    {
        case Qt::Key_W:
       // qDebug()<<"key up";
        if(current_focus!=0)
        {
            ui->pushButton_2->setDefault(false);
        ui->pushButton->setFocus();
        ui->pushButton->setDefault(true);
        current_focus = 0;
        }
      //  emit ui->pushButton->click();

        break;
    case Qt::Key_S:
        //qDebug()<<"key down";
        if(current_focus!=1)
        {
            ui->pushButton->setDefault(false);
        ui->pushButton_2->setFocus();
        ui->pushButton_2->setDefault(true);
        current_focus = 1;
        }
     //   emit ui->pushButton_2->click();
        break;

    }

 //   change_focus(event->key());
}

void MyWidget::keyReleaseEvent(QKeyEvent *event)
{
    switch(event->key())
    {
    case Qt::Key_Up:

    break;
case Qt::Key_Down:

    break;
    }
}
void MyWidget::change_focus(int key)
{
    switch(key)
    {
        case Qt::Key_Up:

qDebug()<<"key up";
        break;
    case Qt::Key_Down:
        qDebug()<<"key down";
        break;

    }
}

void MyWidget::on_pushButton_clicked()
{
    qDebug()<<"button1 pushed";
}

void MyWidget::on_pushButton_2_clicked()
{
    qDebug()<<"button2 pushed";
}
