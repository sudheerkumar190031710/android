package com.example.lab2

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.AutoCompleteTextView
import android.widget.EditText
import android.widget.Button
import android.widget.TextView


class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        var btn=findViewById<Button>(R.id.button)
        var total=findViewById<TextView>(R.id.total)

        btn.setOnClickListener {
            val quantity=Integer.parseInt(findViewById<EditText>(R.id.quantity).text.toString())
            val price=(findViewById<EditText>(R.id.price).text.toString()).toFloat()
            total.text="Total Price :"+(quantity*price).toFloat()
        }
    }
}