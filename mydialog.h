#ifndef MYDIALOG_H
#define MYDIALOG_H

#include <QDialog>
#include <QVector>
#include "mypushbutton.h"
#include <QKeyEvent>
namespace Ui {
class mydialog;

}

class button
{
public:
    button(int i,int up_i,int down_i,int left_i,int right_i,MyPushButton *button);
    ~button();
public:
    MyPushButton* pushbutton;
    int button_index;
    int last_button_index;
    int up_button_index;
    int down_button_index;
    int left_button_index;
    int right_button_index;
};



class mydialog : public QDialog
{
    Q_OBJECT

public:
    explicit mydialog(QWidget *parent = 0);
    ~mydialog();
bool eventFilter(QObject *obj, QEvent *event);
void keyPressEvent(QKeyEvent *event);
private slots:
void on_pushButton_clicked();

void on_pushButton_2_clicked();

void on_pushButton_3_clicked();

void on_pushButton_4_clicked();

private:
    Ui::mydialog *ui;
    QVector<button*> v_button;
    int last_index;
};

#endif // MYDIALOG_H
