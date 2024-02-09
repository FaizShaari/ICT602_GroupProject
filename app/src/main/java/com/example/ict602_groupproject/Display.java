package com.example.ict602_groupproject;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.util.Log;
import android.widget.TextView;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.Toast;


import java.util.Arrays;
import java.util.Vector;

public class Display extends AppCompatActivity {

    private RecyclerView mRecyclerView;
    private InformationAdapter mAdapter;
    private RecyclerView.LayoutManager mLayoutManager;

    Toolbar displaynewsToolbar;

    Vector<MarkerOptions> markerOptions;
    private String URL="http://192.168.206.182/ict602_project/all.php";
    RequestQueue requestQueue;
    Gson gson;
    Information[] informations;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_display);

        displaynewsToolbar = findViewById(R.id.about_toolbar);
        setSupportActionBar(displaynewsToolbar);
        getSupportActionBar().setTitle("Latest News");

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);

        mRecyclerView = findViewById(R.id.recyclerView);
        mRecyclerView.setHasFixedSize(true);
        mLayoutManager = new LinearLayoutManager(this);
        mRecyclerView.setLayoutManager(mLayoutManager);

        gson = new GsonBuilder().create();
        markerOptions = new Vector<>();

        // Call the sendRequest() method here
        sendRequest();
    }

    public void sendRequest(){
        requestQueue = Volley.newRequestQueue(getApplicationContext());
        StringRequest stringRequest = new StringRequest(Request.Method.GET,URL,onSuccess,onError);
        requestQueue.add(stringRequest);
    }
    public Response.Listener<String> onSuccess = new Response.Listener<String>() {
        @Override
        public void onResponse(String response) {
            Log.d("ServerResponse", response); // Add this line to check the server response

            informations = gson.fromJson(response, Information[].class);

            Log.d("Maklumat", "Number of Information data points : " + informations.length);

            if (informations.length < 1) {
                Toast.makeText(getApplicationContext(), "Problem retrieving data", Toast.LENGTH_LONG).show();
                return;
            }

            // Create the adapter and set it to the RecyclerView
            mAdapter = new InformationAdapter(Arrays.asList(informations));
            mRecyclerView.setAdapter(mAdapter);
        }
    };
    public Response.ErrorListener onError = new Response.ErrorListener() {
        @Override
        public void onErrorResponse(VolleyError error) {
            Toast.makeText(getApplicationContext(),error.getMessage(), Toast.LENGTH_LONG).show();
        }
    };

    public boolean onOptionsItemSelected(MenuItem item){
        if (item.getItemId() == android.R.id.home){

            super.onBackPressed();
        }
        return true;
    }
}