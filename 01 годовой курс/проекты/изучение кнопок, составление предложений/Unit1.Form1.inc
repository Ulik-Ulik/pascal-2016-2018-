procedure InitializeComponent;
    begin
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.checkBox1 := new System.Windows.Forms.CheckBox();
        self.checkBox2 := new System.Windows.Forms.CheckBox();
        self.checkBox3 := new System.Windows.Forms.CheckBox();
        self.button1 := new System.Windows.Forms.Button();
        self.groupBox1 := new System.Windows.Forms.GroupBox();
        self.radioButton2 := new System.Windows.Forms.RadioButton();
        self.radioButton1 := new System.Windows.Forms.RadioButton();
        self.listBox1 := new System.Windows.Forms.ListBox();
        self.checkBox4 := new System.Windows.Forms.CheckBox();
        self.groupBox1.SuspendLayout();
        self.SuspendLayout();
        // 
        // textBox1
        // 
        self.textBox1.BackColor := System.Drawing.Color.WhiteSmoke;
        self.textBox1.Location := new System.Drawing.Point(12, 12);
        self.textBox1.Name := 'textBox1';
        self.textBox1.Size := new System.Drawing.Size(359, 26);
        self.textBox1.TabIndex := 2;
        self.textBox1.Text := 'Имя';
        // 
        // checkBox1
        // 
        self.checkBox1.Location := new System.Drawing.Point(21, 175);
        self.checkBox1.Name := 'checkBox1';
        self.checkBox1.Size := new System.Drawing.Size(104, 24);
        self.checkBox1.TabIndex := 4;
        self.checkBox1.Text := '!';
        self.checkBox1.UseVisualStyleBackColor := true;
        // 
        // checkBox2
        // 
        self.checkBox2.Location := new System.Drawing.Point(21, 205);
        self.checkBox2.Name := 'checkBox2';
        self.checkBox2.Size := new System.Drawing.Size(104, 24);
        self.checkBox2.TabIndex := 5;
        self.checkBox2.Text := '?';
        self.checkBox2.UseVisualStyleBackColor := true;
        // 
        // checkBox3
        // 
        self.checkBox3.Location := new System.Drawing.Point(21, 256);
        self.checkBox3.Name := 'checkBox3';
        self.checkBox3.Size := new System.Drawing.Size(0, 0);
        self.checkBox3.TabIndex := 6;
        self.checkBox3.Text := '.';
        self.checkBox3.UseVisualStyleBackColor := true;
        // 
        // button1
        // 
        self.button1.BackColor := System.Drawing.Color.Gainsboro;
        self.button1.ForeColor := System.Drawing.SystemColors.ActiveCaptionText;
        self.button1.Location := new System.Drawing.Point(181, 207);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(121, 49);
        self.button1.TabIndex := 7;
        self.button1.Text := 'OK';
        self.button1.UseVisualStyleBackColor := false;
        self.button1.Click += button1_Click;
        // 
        // groupBox1
        // 
        self.groupBox1.BackColor := System.Drawing.Color.WhiteSmoke;
        self.groupBox1.Controls.Add(self.radioButton2);
        self.groupBox1.Controls.Add(self.radioButton1);
        self.groupBox1.ForeColor := System.Drawing.Color.Black;
        self.groupBox1.Location := new System.Drawing.Point(21, 57);
        self.groupBox1.Name := 'groupBox1';
        self.groupBox1.Size := new System.Drawing.Size(139, 83);
        self.groupBox1.TabIndex := 8;
        self.groupBox1.TabStop := false;
        self.groupBox1.Text := 'Приветствие ';
        self.groupBox1.Enter += groupBox1_Enter;
        // 
        // radioButton2
        // 
        self.radioButton2.Location := new System.Drawing.Point(6, 52);
        self.radioButton2.Name := 'radioButton2';
        self.radioButton2.Size := new System.Drawing.Size(142, 24);
        self.radioButton2.TabIndex := 1;
        self.radioButton2.TabStop := true;
        self.radioButton2.Text := 'Здравствуй';
        self.radioButton2.UseVisualStyleBackColor := true;
        // 
        // radioButton1
        // 
        self.radioButton1.Location := new System.Drawing.Point(6, 19);
        self.radioButton1.Name := 'radioButton1';
        self.radioButton1.Size := new System.Drawing.Size(104, 24);
        self.radioButton1.TabIndex := 0;
        self.radioButton1.TabStop := true;
        self.radioButton1.Text := 'Привет';
        self.radioButton1.UseVisualStyleBackColor := true;
        self.radioButton1.CheckedChanged += radioButton1_CheckedChanged;
        // 
        // listBox1
        // 
        self.listBox1.AccessibleRole := System.Windows.Forms.AccessibleRole.Link;
        self.listBox1.BackColor := System.Drawing.Color.WhiteSmoke;
        self.listBox1.FormattingEnabled := true;
        self.listBox1.ItemHeight := 20;
        self.listBox1.Location := new System.Drawing.Point(181, 57);
        self.listBox1.Name := 'listBox1';
        self.listBox1.Size := new System.Drawing.Size(190, 104);
        self.listBox1.TabIndex := 9;
        // 
        // checkBox4
        // 
        self.checkBox4.Font := new System.Drawing.Font('Microsoft Sans Serif', 10.25);
        self.checkBox4.Location := new System.Drawing.Point(21, 231);
        self.checkBox4.Name := 'checkBox4';
        self.checkBox4.Size := new System.Drawing.Size(104, 24);
        self.checkBox4.TabIndex := 20;
        self.checkBox4.Text := '*';
        self.checkBox4.UseVisualStyleBackColor := true;
        // 
        // Form1
        // 
        self.BackColor := System.Drawing.Color.Honeydew;
        self.ClientSize := new System.Drawing.Size(400, 355);
        self.Controls.Add(self.checkBox4);
        self.Controls.Add(self.listBox1);
        self.Controls.Add(self.groupBox1);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.checkBox3);
        self.Controls.Add(self.checkBox2);
        self.Controls.Add(self.checkBox1);
        self.Controls.Add(self.textBox1);
        self.Name := 'Form1';
        self.Text := 'Form1';
        self.groupBox1.ResumeLayout(false);
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
