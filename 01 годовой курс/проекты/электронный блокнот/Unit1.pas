Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure listBox1_SelectedIndexChanged(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
    procedure button5_Click(sender: Object; e: EventArgs);
    procedure button4_Click(sender: Object; e: EventArgs);
    procedure button7_Click(sender: Object; e: EventArgs);
    procedure button6_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    textBox1: TextBox;
    button1: Button;
    button2: Button;
    button3: Button;
    button4: Button;
    button5: Button;
    button6: Button;
    button7: Button;
    listbox1: ListBox;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure Form1.listBox1_SelectedIndexChanged(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
var
txt:string;
begin
txt:=textBox1.Text;
listBox1.Items.Add(txt);
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
listbox1.Items.Remove(listbox1.SelectedItem);  
end;

procedure Form1.button3_Click(sender: Object; e: EventArgs);
var
nmbr:integer;
begin
nmbr:=listbox1.SelectedIndex;
listbox1.Items.Insert(nmbr,textbox1.Text);
end;

procedure Form1.button4_Click(sender: Object; e: EventArgs);
var
nmbr:integer;
begin
listbox1.Enabled:=false;
button5.Enabled:=true;
button1.Enabled:=false;
button2.Enabled:=false;
button3.Enabled:=false;
button4.Enabled:=false;
button6.Enabled:=false;
button7.Enabled:=false;
nmbr:=listbox1.SelectedIndex;
textbox1.text:=listbox1.Items[nmbr].ToString;
end;

procedure Form1.button5_Click(sender: Object; e: EventArgs);
var
nmbr:integer;
begin
listbox1.Enabled:=true;
button1.Enabled:=true;
button2.Enabled:=true;
button3.Enabled:=true;
button4.Enabled:=true;
button6.Enabled:=true;
button7.Enabled:=true;
nmbr:=listbox1.selectedIndex;
listbox1.Items[nmbr]:=textbox1.text;  
end;

procedure Form1.button6_Click(sender: Object; e: EventArgs);
var
cnt,cnt2,nmbr:integer;
blknt:string;
txbk:textfile;
begin
cnt:=0;
Assign(txbk,'c:\Ученики\Тамиева\сохранение блокнотика.txt');
Rewrite(txbk);
cnt2:=listbox1.Items.Count;
while cnt<cnt2 do begin
                   blknt:=listbox1.Items[cnt].ToString;
                   WriteLn(txbk,blknt);
                   cnt:=cnt+1;
                   end;
Closefile(txbk);
end;

procedure Form1.button7_Click(sender: Object; e: EventArgs);
var
cnt:integer;
blknt:string;
txbk:textfile;
begin
cnt:=0;
Assign(txbk,'c:\Ученики\Тамиева\сохранение блокнотика.txt');
Reset(txbk);
while not(eof(txbk)) do begin
                     ReadLn(txbk,blknt);
                     listBox1.Items.Add(blknt);
                     cnt:=cnt+1;
                     end;
end;
end.
