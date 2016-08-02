#ifndef MYPUSHBUTTON_H
#define MYPUSHBUTTON_H



#include <QPushButton>
#include <QDebug>

class MyPushButton : public QPushButton
{
    Q_OBJECT

public:
    explicit MyPushButton(QWidget *parent = 0);
    ~MyPushButton();
protected:
    virtual void focusInEvent(QFocusEvent * e);
    virtual void focusOutEvent(QFocusEvent * e);

};




#endif // MYPUSHBUTTON_H
