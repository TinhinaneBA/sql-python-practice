#  SQL & Python Practice

**Carnet d'apprentissage structuré et complet** — SQL (des bases à l'avancé, jusqu'à Oracle/PL-SQL) et son miroir en pandas, construit en vue du module M2 *Big Data — Fouille de données* et de la maîtrise SQL/Oracle attendue en entretien Data Science.

> Ce repo n'est pas un projet portfolio à proprement parler, mais un suivi de montée en compétence documenté — chaque notebook est autonome, exécutable et commenté.

---

##  Statut

| Notebook | Sujet | Statut |
|---|---|---|
| [`01_sql_basics.ipynb`](sql/basics/01_sql_basics.ipynb) | SELECT, WHERE, GROUP BY, JOIN — 10 requêtes progressives, jusqu'à des jointures 3 tables | ✅ Terminé |
| [`02_sql_advanced.ipynb`](sql/advanced/02_sql_advanced.ipynb) | Window Functions (ROW_NUMBER, RANK, DENSE_RANK, PARTITION BY, LAG, moyenne mobile), CTEs simples et chaînées, subqueries corrélées, CTE récursive | ✅ Terminé |
| [`03_pandas_advanced.ipynb`](sql/advanced/03_pandas_advanced.ipynb) | Miroir pandas du notebook 02 — merge, groupby, rank, transform, shift, rolling, apply, pivot_table | ✅ Terminé |
| [`04_oracle_specifics.ipynb`](sql/oracle/04_oracle_specifics.ipynb) | PL/SQL, DUAL, ROWNUM vs FETCH FIRST, séquences, curseurs, fonctions/procédures stockées, exceptions — testé en conditions réelles sur Oracle XE (Docker) via DataGrip | ✅ Terminé |

---

##  Repo complet — mis en pause

Les 4 notebooks sont terminés et validés. Ce repo passe en pause : prochaine étape, un 5ᵉ projet portfolio réutilisant ces compétences SQL/Oracle sur un vrai cas d'usage.

---

##  Objectif

Passer d'une maîtrise SQL basique à un niveau **avancé et orienté Data Science** (feature engineering directement en base, window functions, CTEs), avec en miroir systématique l'équivalent pandas — pour pouvoir justifier en entretien *pourquoi* choisir l'un ou l'autre selon le contexte, pas seulement savoir écrire les deux.

Le notebook `02` et son miroir `03` s'appuient volontairement sur un **jeu de données réaliste** (communes normandes + relevés de pollution, cohérent avec le projet [EcoSense](https://github.com/TinhinaneBA/ecosense)) plutôt que des tables jouets déconnectées — chaque requête répond à une vraie question métier.

---

##  Stack technique

`SQLite` (pratique locale, zéro config) · `pandas` · `Jupyter` · `DataGrip` (à venir pour le volet Oracle)

---

##  Installation & utilisation

```bash
git clone https://github.com/TinhinaneBA/sql-python-practice.git
cd sql-python-practice

python -m venv venv
source venv/bin/activate       # Linux/Mac
venv\Scripts\activate          # Windows

pip install jupyter pandas numpy

jupyter notebook
```

Chaque notebook est **autonome** : la base SQLite (ou les DataFrames pandas) est générée directement dans le notebook via un seed fixe (`np.random.seed(42)`), donc aucun fichier de données externe n'est nécessaire pour les exécuter — à l'exception de `01_sql_basics.ipynb` qui s'appuie sur `boutique.db` (base SQLite fournie dans `sql/basics/`).

---

##  Structure

```
sql-python-practice/
├── sql/
│   ├── basics/
│   │   ├── 01_sql_basics.ipynb
│   │   └── boutique.db
│   └── advanced/
│       ├── 02_sql_advanced.ipynb
│       └── 03_pandas_advanced.ipynb
└── README.md
```

---

##  Prochaine étape

Ce repo est complet et mis en pause. Place au 5ᵉ projet portfolio, qui réutilise ces compétences SQL avancé/Oracle sur un vrai cas d'usage (voir portfolio principal).

---

##  Auteur

**Tinhinane** — Étudiante M2 IWOCS, Université Le Havre Normandie
[GitHub](https://github.com/TinhinaneBA) · [Portfolio](https://github.com/TinhinaneBA)