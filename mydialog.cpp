#include "mydialog.h"
#include "ui_mydialog.h"




button::button(int i, int up_i,int down_i,int left_i,int right_i,MyPushButton *button):pushbutton(button)
{
    button_index = i;
    last_button_index = -1;
    up_button_index = up_i;
    down_button_index = down_i;
    left_button_index = left_i;
    right_button_index = right_i;
}
button::~button()
{

}
mydialog::mydialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::mydialog)
{
    ui->setupUi(this);
    ui->pushButton->setFocus();
    ui->pushButton->setDefault(true);
    last_index = 0;
   // installEventFilter(this);
 //   ui->pushButton->installEventFilter(this);
//    ui->pushButton_2->installEventFilter(this);
    button *button1= new button(0,-1,2,-1,1,ui->pushButton);
    button * button2 = new button(1,-1,3,0,-1,ui->pushButton_2);
    button * button3 = new button(2,0,-1,-1,3,ui->pushButton_3);
    button * button4 = new button(3,1,-1,2,-1,ui->pushButton_4);
    v_button.push_back(button1);
    v_button.push_back(button2);
    v_button.push_back(button3);
    v_button.push_back(button4);
}

mydialog::~mydialog()
{
    delete ui;
}
bool mydialog::eventFilter(QObject *obj, QEvent *event)
{
    if(obj==ui->pushButton)
    {
        if(event->type() == QEvent::FocusIn)
            qDebug()<<"button fucos in";
        else if(event->type() == QEvent::FocusOut)
            qDebug()<<"button focus out";

    }
    else if(obj == ui->pushButton_2)
    {
        if(event->type() == QEvent::FocusIn)
            qDebug()<<"button fucos in";
        else if(event->type() == QEvent::FocusOut)
            qDebug()<<"button focus out";
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
/*
void mydialog::change_focus(int key)
{

}
*/
void mydialog::keyPressEvent(QKeyEvent *event)
{
    int index;
    button *a;
    QVectorIterator<button*> i(v_button);
    while(i.hasNext())
    {
         a = i.next();
        if(a->button_index == last_index)
        {

            break;
        }
    }
    qDebug()<<last_index;
    switch(event->key())
    {
        case Qt::Key_W://up

        {
            index = a->up_button_index;
        }

        break;
    case Qt::Key_S://down


        {
    index = a->down_button_index;
        }

        break;
    case Qt::Key_A://left


        {
  index = a->left_button_index;
        }

        break;
    case Qt::Key_D://right


        {
  index = a->right_button_index;
        }

        break;

    }
    if(index!=-1)
    {
        a->pushbutton->setDefault(false);
    i.toFront();
    while(i.hasNext())
    {
         a = i.next();
        if(a->button_index == index)
        {
            a->pushbutton->setFocus();
            a->pushbutton->setDefault(true);
            last_index = index;
            break;
        }
    }
qDebug()<<index;
    }
    }

void mydialog::on_pushButton_clicked()
{
    qDebug()<<"button 0 clicked";
}

void mydialog::on_pushButton_2_clicked()
{
    qDebug()<<"button 1 clicked";
}

void mydialog::on_pushButton_3_clicked()
{
    qDebug()<<"button 2 clicked";
}

void mydialog::on_pushButton_4_clicked()
{
    qDebug()<<"button 3 clicked";
}
