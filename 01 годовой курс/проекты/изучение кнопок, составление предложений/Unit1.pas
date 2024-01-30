Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure textBox3_TextChanged(sender: Object; e: EventArgs);
    procedure groupBox1_Enter(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure radioButton1_CheckedChanged(sender: Object; e: EventArgs);
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    textBox1: TextBox;
    checkBox1: CheckBox;
    checkBox2: CheckBox;
    checkBox3: CheckBox;
    button1: Button;
    radioButton2: RadioButton;
    radioButton1: RadioButton;
    listBox1: ListBox;
    checkBox4: CheckBox;
    groupBox1: GroupBox;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure Form1.textBox3_TextChanged(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.groupBox1_Enter(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
var
rdbtns:string;
begin
if radioButton1.Checked then begin
                             rdbtns:=rdbtns+radioButton1.text;
                             end
                        else begin
                             rdbtns:=rdbtns+radioButton2.text;
                             end; 
rdbtns:=rdbtns+' '+textBox1.Text;
if CheckBox1.Checked then begin 
                          rdbtns:=rdbtns+CheckBox1.text;
                          end;
                          
if CheckBox2.Checked then begin 
                          rdbtns:=rdbtns+CheckBox2.text;
                          end;
if CheckBox4.Checked then begin
                          rdbtns:=rdbtns+CheckBox4.Text;
                          end;
WriteLn(rdbtns);
listBox1.Items.Add(rdbtns);
end;

procedure Form1.radioButton1_CheckedChanged(sender: Object; e: EventArgs);
begin
  
end;
end.
                          