"""MediCheck — a pharmacy safety assistant.
Introduction to Programming, Midterm I project.

Student name: ______________________   Student ID: ______________

Rules
- Write your code inside each function. Do not rename functions or change their parameters:
  your file is graded by running tests that call these exact names.
- Use only what we covered in Chapters 1-10. Dictionaries, tuples, classes and
  f-strings are NOT needed.
- Do not use sum(), max(), min() or sorted() inside Part E.
- Test as you go: run this file, or call your functions in the Python shell.
"""

# Heart-rate readings (beats per minute) from one patient's 40-minute monitor log.
READINGS = [72, 75, 74, 78, 81, 85, 92, 104, 110, 98, 88, 84, 80, 79, 77, 76,
            74, 73, 71, 58, 55, 57, 62, 66, 70, 72, 73, 75, 74, 76, 78, 77,
            75, 74, 120, 76, 73, 72, 71, 70]


# ======================================================================
# Part A — Patient intake (20 points)
# ======================================================================
def bmi(weight_kg, height_cm):
    """Returns body-mass index = weight (kg) / height (m) squared, rounded to 1 decimal.

    >>> bmi(70, 175)
    22.9
    """
    pass


def bmi_category(bmi_value):
    """Returns 'underweight' (below 18.5), 'normal' (18.5 to below 25),
    'overweight' (25 to below 30) or 'obese' (30 and above).

    >>> bmi_category(22.9)
    'normal'
    """
    pass


def pediatric_dose(weight_kg, mg_per_kg, max_mg):
    """Returns the dose in mg = weight_kg * mg_per_kg, but never more than max_mg.
    If weight_kg is zero or negative, returns None.

    >>> pediatric_dose(18, 15, 500)
    270
    >>> pediatric_dose(40, 15, 500)
    500
    """
    pass


# ======================================================================
# Part B — Patient code check (15 points)
# A patient code is 'ACB', then 5 digits, then 1 check digit.
# The check digit is (sum of the 5 digits) % 10.   Example: ACB123455
# ======================================================================
def sum_digits(n):
    """Returns the sum of the digits of a non-negative integer.
    Must be RECURSIVE (no loops).

    >>> sum_digits(12345)
    15
    """
    pass


def is_valid_code(code):
    """Returns True if code is a valid patient code, otherwise False.
    Check the length, the 'ACB' prefix, that the other 6 characters are digits,
    and the check digit.

    >>> is_valid_code('ACB123455')
    True
    >>> is_valid_code('ACB123456')
    False
    """
    pass


def make_code(number):
    """Returns the valid patient code for a number from 0 to 99999.
    Small numbers are padded with zeros to 5 digits.

    >>> make_code(42)
    'ACB000426'
    """
    pass


# ======================================================================
# Part C — Recursion: when is the drug level safe? (15 points)
# ======================================================================
def hours_until_safe(amount_mg, safe_mg, half_life_h):
    """Every half_life_h hours, the amount of drug in the body halves.
    Returns how many hours pass until the amount is at or below safe_mg.
    Must be RECURSIVE (no loops).

    >>> hours_until_safe(400, 50, 6)
    18
    >>> hours_until_safe(40, 50, 6)
    0
    """
    pass


# ======================================================================
# Part D — Look-alike drug names (25 points)
# Mixing up drugs with similar names is a common, dangerous medication error.
# ======================================================================
def read_drugs(filename):
    """Reads a file with one drug name per line and returns a list of the names,
    stripped of whitespace and in lowercase, in file order. Skips empty lines."""
    pass


def count_differences(name1, name2):
    """If the names have the same length, returns the number of positions where
    the letters differ. If the lengths differ, returns -1.

    >>> count_differences('hydralazine', 'hydroxyzine')
    3
    >>> count_differences('codeine', 'morphine')
    -1
    """
    pass


def look_alike_pairs(drugs, max_diff):
    """Returns a list of strings 'name1 / name2' for every pair of names
    (name1 before name2 in the list) with the same length that differ in
    at least 1 and at most max_diff positions. Keep the list order."""
    pass


def find_drugs(drugs, fragment):
    """Returns the names that contain fragment, ignoring upper/lower case,
    in list order.

    >>> find_drugs(['alprazolam', 'insulin', 'omeprazole'], 'PRAZ')
    ['alprazolam', 'omeprazole']
    """
    pass


# ======================================================================
# Part E — Heart-rate monitor (15 points)
# ======================================================================
def average(readings):
    """Returns the mean of a non-empty list, rounded to 1 decimal (use a loop)."""
    pass


def abnormal_indices(readings, low, high):
    """Returns a list of the indexes of readings below low or above high."""
    pass


def smooth(readings):
    """Returns a NEW list where every value except the first and last is replaced by
    the average of itself and its two neighbours, rounded to 1 decimal.
    The original list must NOT be changed.

    >>> smooth([60, 66, 72, 90])
    [60, 66.0, 76.0, 90]
    """
    pass


def longest_normal_streak(readings, low, high):
    """Returns the length of the longest run of consecutive readings
    with low <= reading <= high."""
    pass


# ======================================================================
# Part F — Menu (10 points)
# ======================================================================
def main():
    """Repeatedly shows a menu until the user types q:
        1) BMI           — ask weight and height, print the BMI and its category
        2) Check code    — ask for a patient code, print whether it is valid
        3) Search drug   — ask for a fragment, print the matching drug names
        4) Look-alike    — print every look-alike pair with max_diff = 3
        q) Quit
    Any other input prints an error message and shows the menu again.
    Use read_drugs('drugs.txt') to load the names once, at the start.
    """
    pass


# Leave this line as it is: it runs main() only when you run this file.
if __name__ == '__main__':
    main()
