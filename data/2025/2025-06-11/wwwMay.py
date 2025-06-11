import pandas as pd
import numpy as np

# Set random seed for reproducibility
np.random.seed(42)

# Define time points
time_points = ['Baseline', '1st week', '2nd week', '4th week', '6th week', '8th week']

# Approximate means from the graphs
szc_means = [5.7, 5.2, 4.8, 4.8, 4.7, 4.6]
sps_means = [5.6, 5.4, 5.2, 5.1, 4.9, 4.9]

# Approximate standard deviations (estimated from error bars)
szc_stds = [0.3, 0.3, 0.3, 0.3, 0.4, 0.4]
sps_stds = [0.4, 0.3, 0.4, 0.4, 0.5, 0.6]

# Number of patients per group - CORRECTED to 60 each
n_patients_szc = 60
n_patients_sps = 60

# Generate patient data
all_data = []

# SZC Group
for i in range(n_patients_szc):
    patient_id = f"SZC_{i+1:03d}"
    for j, time_point in enumerate(time_points):
        # Generate realistic potassium values with some patient-specific variation
        base_variation = np.random.normal(0, 0.1)  # Patient-specific baseline variation
        potassium = np.random.normal(szc_means[j] + base_variation, szc_stds[j])
        # Ensure realistic bounds (3.5 - 7.0 mEq/L)
        potassium = max(3.5, min(7.0, potassium))
        
        all_data.append({
            'Patient_ID': patient_id,
            'Group': 'SZC',
            'Time_Point': time_point,
            'Week': [0, 1, 2, 4, 6, 8][j],
            'Serum_Potassium_mEq_L': round(potassium, 2)
        })

# SPS Group
for i in range(n_patients_sps):
    patient_id = f"SPS_{i+1:03d}"
    for j, time_point in enumerate(time_points):
        # Generate realistic potassium values with some patient-specific variation
        base_variation = np.random.normal(0, 0.1)  # Patient-specific baseline variation
        potassium = np.random.normal(sps_means[j] + base_variation, sps_stds[j])
        # Ensure realistic bounds (3.5 - 7.0 mEq/L)
        potassium = max(3.5, min(7.0, potassium))
        
        all_data.append({
            'Patient_ID': patient_id,
            'Group': 'SPS',
            'Time_Point': time_point,
            'Week': [0, 1, 2, 4, 6, 8][j],
            'Serum_Potassium_mEq_L': round(potassium, 2)
        })

# Create DataFrame
df = pd.DataFrame(all_data)

# Add some additional realistic patient characteristics
np.random.seed(42)
patient_chars = []

for group in ['SZC', 'SPS']:
    n_patients = 60  # Updated to 60
    for i in range(n_patients):
        patient_id = f"{group}_{i+1:03d}"
        patient_chars.append({
            'Patient_ID': patient_id,
            'Age': np.random.randint(45, 85),
            'Gender': np.random.choice(['Male', 'Female'], p=[0.6, 0.4]),
            'Baseline_eGFR': round(np.random.normal(35, 10), 1),
            'Diabetes': np.random.choice(['Yes', 'No'], p=[0.7, 0.3]),
            'Hypertension': np.random.choice(['Yes', 'No'], p=[0.8, 0.2])
        })

char_df = pd.DataFrame(patient_chars)

# Merge with main data
final_df = df.merge(char_df, on='Patient_ID', how='left')

# Reorder columns
final_df = final_df[['Patient_ID', 'Group', 'Age', 'Gender', 'Baseline_eGFR', 
                     'Diabetes', 'Hypertension', 'Time_Point', 'Week', 
                     'Serum_Potassium_mEq_L']]

# Save to CSV
final_df.to_csv('serum_potassium_study_data.csv', index=False)

# Display summary statistics to verify they match the graphs
print("Summary Statistics by Group and Time Point:")
print("=" * 60)

summary = final_df.groupby(['Group', 'Time_Point', 'Week'])['Serum_Potassium_mEq_L'].agg(['mean', 'std', 'count']).round(2)
print(summary)

print(f"\nTotal patients: {len(final_df['Patient_ID'].unique())}")
print(f"SZC group: {len([p for p in final_df['Patient_ID'].unique() if p.startswith('SZC')])}")
print(f"SPS group: {len([p for p in final_df['Patient_ID'].unique() if p.startswith('SPS')])}")
print(f"\nData saved to: serum_potassium_study_data.csv")
print(f"Total records: {len(final_df)}")

# Display first few rows
print("\nFirst 10 rows of generated data:")
print(final_df.head(10))