package com.example.ict602_groupproject;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.List;

public class InformationAdapter extends RecyclerView.Adapter<InformationAdapter.ViewHolder> {

    private List<Information> informations;

    public InformationAdapter(List<Information> informations) {
        this.informations = informations;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_information, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(ViewHolder holder, int position) {
        Information information = informations.get(position);
        holder.txtHazardType.setText("Hazard Type: " + information.typeHazard);
        holder.txtTimeDateReported.setText("Time/Date Reported: " + information.timeDateReported);
        holder.txtReporterName.setText("Reporter Name: " + information.reporterName);
        holder.txtHazardLocation.setText("Hazard Location: " + information.hazardLocation);
        holder.txtHazardDesc.setText("Hazard Description: " + information.hazardDesc);
    }

    @Override
    public int getItemCount() {
        return informations.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {

        TextView txtHazardType, txtTimeDateReported, txtReporterName, txtHazardLocation, txtHazardDesc;

        public ViewHolder(View itemView) {
            super(itemView);
            txtHazardType = itemView.findViewById(R.id.txtHazardType);
            txtTimeDateReported = itemView.findViewById(R.id.txtTimeDateReported);
            txtReporterName = itemView.findViewById(R.id.txtReporterName);
            txtHazardLocation = itemView.findViewById(R.id.txtHazardLocation);
            txtHazardDesc = itemView.findViewById(R.id.txtHazardDesc);
        }
    }
}