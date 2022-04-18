package com.example.myapplication

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        var id=findViewById<EditText>(R.id.regid)
        var name=findViewById<EditText>(R.id.name)
        var email=findViewById<EditText>(R.id.email)
        var phno=findViewById<EditText>(R.id.phno)
        var address=findViewById<EditText>(R.id.address)
        var btn=findViewById<Button>(R.id.btn)
        btn.setOnClickListener {
            Toast.makeText(applicationContext,"id :"+id.text.toString()+"\nname :"+name.text.toString()+"\nemail :"+email.text.toString()+"\nphno :"+phno.text.toString()+"\naddress :"+address.text.toString(),Toast.LENGTH_LONG).show()
        }
    }
}