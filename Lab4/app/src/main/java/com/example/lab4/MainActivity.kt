package com.example.lab4

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.launch

class MainActivity : AppCompatActivity(), CoroutineScope by MainScope() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        launch(Dispatchers.Main){
            try{
                val response=APIAdapter.apiClient.getData()
                if(response.isSuccessful && response.body() !=null){
                    val data=response.body()
                    data?.updated.let{
                        val update=findViewById<TextView>(R.id.txt1)
                        update.text = "Update\n"+it.toString()
                    }
                    data?.active.let{
                        val active=findViewById<TextView>(R.id.txt2)
                        active.text = "Active Cases \n"+it.toString()
                    }
                    data?.activePerOneMillion.let{
                        val update=findViewById<TextView>(R.id.txt3)
                        update.text = "Activ/Million \n"+it.toString()
                    }
                    data?.affectedCountries.let{
                        val active=findViewById<TextView>(R.id.txt4)
                        active.text = "ACountries \n"+it.toString()
                    }
                    data?.cases.let{
                        val update=findViewById<TextView>(R.id.txt5)
                        update.text = "cases\n"+it.toString()
                    }
                    data?.casesPerOneMillion.let{
                        val active=findViewById<TextView>(R.id.txt6)
                        active.text = "casesPerOneMillion\n"+it.toString()
                    }
                    data?.critical.let{
                        val update=findViewById<TextView>(R.id.txt7)
                        update.text = "critical\n"+it.toString()
                    }
                    data?.criticalPerOneMillion.let{
                        val active=findViewById<TextView>(R.id.txt8)
                        active.text = "criticalPerOneMillion\n"+it.toString()
                    }
                    data?.deaths.let{
                        val update=findViewById<TextView>(R.id.txt9)
                        update.text = "deaths\n"+it.toString()
                    }
                    data?.deathsPerOneMillion.let{
                        val active=findViewById<TextView>(R.id.txt10)
                        active.text = "deathsPerOneMillion\n"+it.toString()
                    }
                    data?.oneCasePerPeople.let{
                        val update=findViewById<TextView>(R.id.txt11)
                        update.text = "oneCasePerPeople\n"+it.toString()
                    }
                    data?.oneDeathPerPeople.let{
                        val active=findViewById<TextView>(R.id.txt12)
                        active.text = "oneDeathPerPeople\n"+it.toString()
                    }
                    data?.oneTestPerPeople.let{
                        val update=findViewById<TextView>(R.id.txt13)
                        update.text = "oneTestPerPeople\n"+it.toString()
                    }
                    data?.population.let{
                        val active=findViewById<TextView>(R.id.txt14)
                        active.text = "population\n"+it.toString()
                    }
                    data?.recovered.let{
                        val update=findViewById<TextView>(R.id.txt15)
                        update.text ="recovered\n"+ it.toString()
                    }
                    data?.recoveredPerOneMillion.let{
                        val active=findViewById<TextView>(R.id.txt16)
                        active.text = "recoveredPerOneMillion\n"+it.toString()
                    }
                    data?.tests.let{
                        val update=findViewById<TextView>(R.id.txt17)
                        update.text ="tests\n"+ it.toString()
                    }
                    data?.testsPerOneMillion.let{
                        val active=findViewById<TextView>(R.id.txt18)
                        active.text = "testsPerOneMillion\n"+ it.toString()
                    }
                    data?.todayCases.let{
                        val update=findViewById<TextView>(R.id.txt19)
                        update.text = "todayCases\n"+it.toString()
                    }
                    data?.todayDeaths.let{
                        val active=findViewById<TextView>(R.id.txt20)
                        active.text = "todayDeaths\n"+it.toString()
                    }
                    data?.todayRecovered.let{
                        val active=findViewById<TextView>(R.id.txt21)
                        active.text = "todayRecovered\n"+it.toString()
                    }

                }else{
                    Toast.makeText(
                        this@MainActivity,
                        "Error Occurred: ${response.message()}",
                        Toast.LENGTH_LONG).show()
                }

            }catch(e: Exception){
                Toast.makeText(this@MainActivity,
                    "Error Occurred: ${e.message}",
                    Toast.LENGTH_LONG).show()
            }
        }
    }

}
