import mysql.connector as mysql


class Connexion:
    @classmethod
    def open_connexion(cls):
        cls.link = mysql.connect(user='root', password='root', host='localhost', port=8081, database='matching')
        cls.cursor = cls.link.cursor()

    @classmethod
    def close_connexion(cls):
        cls.cursor.close()
        cls.link.close()

    @classmethod
    def get_students_picks(cls):
        cls.open_connexion()
        cls.cursor.execute("SELECT students.name FROM students_picks JOIN students ON students_picks.student = students.id")
        picks = {name[0]: [] for name in cls.cursor.fetchall()}

        cls.cursor.execute("""SELECT students.name, companies.name FROM students_picks
                            JOIN students ON students_picks.student = students.id
                            JOIN companies ON students_picks.company = companies.id
                            ORDER BY students.name, pick_order ASC""")
        
        for name, company in cls.cursor.fetchall():
            picks[name].append(company)
        
        cls.close_connexion()
        return picks

    @classmethod
    def get_companies_picks(cls):
        cls.open_connexion()
        cls.cursor.execute("SELECT companies.name FROM companies_picks JOIN companies ON companies_picks.company = companies.id")
        picks = {name[0]: [] for name in cls.cursor.fetchall()}

        cls.cursor.execute("""SELECT companies.name, students.name FROM companies_picks
                            JOIN students ON companies_picks.student = students.id
                            JOIN companies ON companies_picks.company = companies.id
                            ORDER BY students.name, pick_order ASC""")
        
        for name, company in cls.cursor.fetchall():
            picks[name].append(company)
        cls.close_connexion()
        return picks

    @classmethod
    def get_capacities(cls):
        cls.open_connexion()
        capacities = {}
        cls.cursor.execute("SELECT name, capacity FROM companies")
        for name, capacity in cls.cursor.fetchall():
            capacities[name] = capacity
        cls.close_connexion()
        return capacities