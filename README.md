# 📊 Telco Customer Churn Analysis
Ein End-to-End Data Analytics Projekt zur Identifizierung von Kündigungsrisiken und Umsatzverlusten.

## 📝 Projektübersicht
In diesem Projekt untersuche ich, warum Kunden eines Telekommunikationsunternehmens kündigen. Ziel ist es, Muster im Kundenverhalten zu erkennen und datengestützte Empfehlungen zur Steigerung der Kundenbindung zu geben.

## 🛠 Tech Stack
* **Python (Jupyter Lab):** Data Cleaning & Transformation (Pandas).
* **SQL (PostgreSQL):** Deep Dive Analyse & Feature Engineering.
* **Power BI:** Interaktives Dashboard & Storytelling.

## 🚀 Key Insights
* **Vertragsrisiko:** Kunden mit "Month-to-month" Verträgen haben eine signifikant höhere Churn-Rate als Kunden mit langfristigen Verträgen.
* **Technologie-Auffälligkeit:** Glasfaser-Kunden kündigen häufiger, was auf technische Instabilität oder Preis-Leistungs-Probleme hindeuten könnte.
* **Umsatzverlust:** Durch den Churn im Bereich der monatlichen Verträge verliert das Unternehmen monatlich ca. $X.XXX an Umsatz.

## 💡 Handlungsempfehlungen (Business Recommendations)

Basierend auf der Analyse habe ich drei strategische Ansätze entwickelt, um die Kundenbindung zu stärken:

1. **Konvertierung von Kurzzeitverträgen:** Da die Churn-Rate bei "Month-to-month"-Verträgen am höchsten ist, sollten Kunden nach einer 3-monatigen "Testphase" gezielte Anreize (z. B. 10% Rabatt oder Upgrade-Optionen) für den Wechsel in einen Jahresvertrag erhalten. Das stabilisiert den monatlich wiederkehrenden Umsatz (MRR).

2. **Qualitätsoffensive bei Glasfaser-Kunden:**
   Obwohl Glasfaser-Kunden höhere monatliche Gebühren zahlen, kündigen sie überproportional oft. Hier sollte eine technische Überprüfung der Servicequalität oder eine Zufriedenheitsumfrage durchgeführt werden, um sicherzustellen, dass das Preis-Leistungs-Verhältnis stimmt.

3. **Retention-Fokus auf Senioren & Alleinstehende:**
   Die Daten zeigen spezifische demografische Muster. Ein gezieltes Loyalty-Programm für diese Segmente könnte die Abwanderung verringern, da die Akquise eines Neukunden deutlich teurer ist als die Pflege eines Bestandskunden (Retention vs. Acquisition Cost).

## 📊 Dashboard Preview
<img width="1355" height="762" alt="image" src="https://github.com/user-attachments/assets/a9d6fd11-9c96-48ff-bf15-a958800e1b54" />


## 📂 Struktur
1. **Data Cleaning:** Behandlung von Missing Values in `TotalCharges` via Python.
2. **Database:** Import in PostgreSQL; Erstellung von Views für optimierte BI-Verbindung.
3. **Visualisierung:** Aufbau eines Dashboards mit Fokus auf Churn-Metriken und Segmentierung.
