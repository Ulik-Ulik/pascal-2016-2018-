procedure InitializeComponent;
    begin
        self.listbox1 := new System.Windows.Forms.ListBox();
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.button1 := new System.Windows.Forms.Button();
        self.button2 := new System.Windows.Forms.Button();
        self.button3 := new System.Windows.Forms.Button();
        self.button4 := new System.Windows.Forms.Button();
        self.button5 := new System.Windows.Forms.Button();
        self.button6 := new System.Windows.Forms.Button();
        self.button7 := new System.Windows.Forms.Button();
        self.SuspendLayout();
        // 
        // listbox1
        // 
        self.listbox1.ForeColor := System.Drawing.SystemColors.WindowText;
        self.listbox1.FormattingEnabled := true;
        self.listbox1.Location := new System.Drawing.Point(21, 69);
        self.listbox1.Name := 'listbox1';
        self.listbox1.Size := new System.Drawing.Size(228, 498);
        self.listbox1.TabIndex := 0;
        self.listbox1.SelectedIndexChanged += listBox1_SelectedIndexChanged;
        // 
        // textBox1
        // 
        self.textBox1.Location := new System.Drawing.Point(21, 22);
        self.textBox1.Name := 'textBox1';
        self.textBox1.Size := new System.Drawing.Size(384, 20);
        self.textBox1.TabIndex := 1;
        // 
        // button1
        // 
        self.button1.Location := new System.Drawing.Point(309, 69);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(96, 32);
        self.button1.TabIndex := 2;
        self.button1.Text := 'добавить';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // button2
        // 
        self.button2.Location := new System.Drawing.Point(309, 140);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(96, 33);
        self.button2.TabIndex := 3;
        self.button2.Text := 'удалить';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // button3
        // 
        self.button3.Location := new System.Drawing.Point(309, 211);
        self.button3.Name := 'button3';
        self.button3.Size := new System.Drawing.Size(96, 33);
        self.button3.TabIndex := 4;
        self.button3.Text := 'вставить';
        self.button3.UseVisualStyleBackColor := true;
        self.button3.Click += button3_Click;
        // 
        // button4
        // 
        self.button4.Location := new System.Drawing.Point(309, 278);
        self.button4.Name := 'button4';
        self.button4.Size := new System.Drawing.Size(96, 32);
        self.button4.TabIndex := 5;
        self.button4.Text := 'редактировать';
        self.button4.UseVisualStyleBackColor := true;
        self.button4.Click += button4_Click;
        // 
        // button5
        // 
        self.button5.Enabled := false;
        self.button5.Location := new System.Drawing.Point(309, 352);
        self.button5.Name := 'button5';
        self.button5.Size := new System.Drawing.Size(96, 32);
        self.button5.TabIndex := 6;
        self.button5.Text := 'изменить';
        self.button5.UseVisualStyleBackColor := true;
        self.button5.Click += button5_Click;
        // 
        // button6
        // 
        self.button6.Location := new System.Drawing.Point(309, 423);
        self.button6.Name := 'button6';
        self.button6.Size := new System.Drawing.Size(96, 32);
        self.button6.TabIndex := 7;
        self.button6.Text := 'cохранить';
        self.button6.UseVisualStyleBackColor := true;
        self.button6.Click += button6_Click;
        // 
        // button7
        // 
        self.button7.Location := new System.Drawing.Point(309, 497);
        self.button7.Name := 'button7';
        self.button7.Size := new System.Drawing.Size(96, 32);
        self.button7.TabIndex := 8;
        self.button7.Text := 'восстановить';
        self.button7.UseVisualStyleBackColor := true;
        self.button7.Click += button7_Click;
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(430, 588);
        self.Controls.Add(self.button7);
        self.Controls.Add(self.button6);
        self.Controls.Add(self.button5);
        self.Controls.Add(self.button4);
        self.Controls.Add(self.button3);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.textBox1);
        self.Controls.Add(self.listbox1);
        self.Name := 'Form1';
        self.Text := 'Form1';
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
