import numpy as np
from connexion import Connexion


def matching(student_picks, company_picks, capacities=None):
    #if no capacity is set, put 1 by default for each company
    if capacities == None:
        capacities = {key: 1 for key in company_picks.keys()}

    students = list(student_picks.keys())
    student_matching = {s: None for s in student_picks.keys()}
    company_matching = {c: [] for c in company_picks.keys()}

    while students:
        s = students.pop(0)
        # let s_p be the preferences of student s
        s_p = student_picks[s]
        while s_p and (not student_matching[s]):
            if s not in company_picks[s_p[0]]:
                s_p.remove(s_p[0])
            if s_p:
                c = s_p[0]
                # let c_p be the preferences of company c
                c_p = company_picks[c] 
                # let c_matches be the matched student for company c 
                c_matches = company_matching[c]
                if len(c_matches) < capacities[c]:
                    student_matching[s] = c
                    company_matching[c] += [s]
                else:
                    # s_rank is a given student's rank within a company's preference list
                    s_rank = c_p.index(s)
                    worst_rank = np.max([c_p.index(i) for i in c_p if i in c_matches])
                    worst_match = c_p[worst_rank]
                    if s_rank < worst_rank:
                        company_matching[worst_match] = None
                        c_matches.remove(worst_match)
                        student_picks[worst_match].remove(c)
                        students.append(worst_match)
                        company_matching[s] = c
                        c_matches += [s]
                    else:
                        c_p.remove(s)
                        s_p.remove(c)

    return student_matching, company_matching


student_picks = Connexion.get_students_picks()
company_picks = Connexion.get_companies_picks()
capacities = Connexion.get_capacities()

student_matching, company_matching = matching(student_picks, company_picks, capacities)


print("Students: ",student_matching)
print("Companies: ", company_matching)