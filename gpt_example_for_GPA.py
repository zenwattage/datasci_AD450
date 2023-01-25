def percent_to_gpa(percent_range):
    percent_range = percent_range.split("-")
    lower_bound = int(percent_range[0])
    upper_bound = int(percent_range[1])
    gpa_dict = {100:4.0, 95:3.9, 94:3.8, 93:3.7, 92:3.6, 91:3.5, 90:3.4, 89:3.3, 88:3.2, 87:3.1, 86:3.0, 85:2.9, 84:2.8, 83:2.7, 82:2.6, 81:2.5, 80:2.4, 79:2.3, 78:2.2, 77:2.1, 76:2.0, 75:1.9, 74:1.8, 73:1.7, 72:1.6, 71:1.5, 70:1.4, 69:1.3, 68:1.2, 67:1.1, 66:1.0, 65:0.0}
    lower_gpa = max([gpa for percent, gpa in gpa_dict.items() if lower_bound >= percent])
    upper_gpa = max([gpa for percent, gpa in gpa_dict.items() if upper_bound >= percent])
    return f"GPA range: {lower_gpa:.1f}-{upper_gpa:.1f}"

percent_range = input("Enter a percentage range (e.g. 80-90): ")
print(percent_to_gpa(percent_range))