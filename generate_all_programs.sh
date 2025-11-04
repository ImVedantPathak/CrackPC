# --- Program 1: Swap Three Variables without Temp ---
cat > Program1.c << 'EOF_P1'
#include <stdio.h>

int main()
{
    int a, b, c;
    scanf("%d%d%d", &a, &b, &c);
    a = a + b + c;
    c = a - (b + c);
    b = a - (c + b);
    a = a - (b + c);
    printf("%d %d %d\n", a, b, c);
    return 0;
}
EOF_P1

# --- Program 2: Count Negatives and Non-Negatives ---
cat > Program2.c << 'EOF_P2'
#include <stdio.h>

int main()
{
    int n;
    int num;
    int negatives = 0;
    int non_negatives = 0;
    int i;
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        scanf("%d", &num);
        if (num < 0)
        {
            negatives++;
        }
        else
        {
            non_negatives++;
        }
    }
    printf("%d\n", negatives);
    printf("%d\n", non_negatives);
    return 0;
}
EOF_P2

# --- Program 3: Average of N Numbers ---
cat > Program3.c << 'EOF_P3'
#include <stdio.h>

int main()
{
    int n;
    int num;
    long long sum = 0;
    int i;
    double average;
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        scanf("%d", &num);
        sum += num;
    }
    if (n > 0)
    {
        average = (double)sum / n;
        printf("%lf\n", average);
    }
    else
    {
        printf("0.000000\n");
    }
    return 0;
}
EOF_P3

# --- Program 4: Sum of Squares of N Numbers ---
cat > Program4.c << 'EOF_P4'
#include <stdio.h>

int main()
{
    int n;
    int num;
    long long sum_of_squares = 0;
    int i;
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        scanf("%d", &num);
        sum_of_squares += (long long)num * num;
    }
    printf("%lld\n", sum_of_squares);
    return 0;
}
EOF_P4

# --- Program 5: Sum of N Terms of Three Series ---
cat > Program5.c << 'EOF_P5'
#include <stdio.h>

int main()
{
    int n;
    long long sum_a = 0;
    long long sum_b = 0;
    double sum_c = 0.0;
    int i;
    scanf("%d", &n);
    for (i = 1; i <= n; i++)
    {
        sum_a += i;
        sum_b += (2 * i - 1);
        sum_c += 1.0 / (2.0 * i);
    }
    printf("%lld\n", sum_a);
    printf("%lld\n", sum_b);
    printf("%lf\n", sum_c);
    return 0;
}
EOF_P5

# --- Program 6: Alternating Sequence 1 -1 ---
cat > Program6.c << 'EOF_P6'
#include <stdio.h>

int main()
{
    int n;
    int i;
    scanf("%d", &n);
    for (i = 1; i <= n; i++)
    {
        if (i % 2 != 0)
        {
            printf("1");
        }
        else
        {
            printf("-1");
        }
        if (i < n)
        {
            printf(" ");
        }
    }
    printf("\n");
    return 0;
}
EOF_P6

# --- Program 7: Sum of Alternating Odd Series ---
cat > Program7.c << 'EOF_P7'
#include <stdio.h>

int main()
{
    int n;
    long long sum = 0;
    int term;
    int i;
    scanf("%d", &n);
    for (i = 1; i <= n; i++)
    {
        term = 2 * i - 1;
        if (i % 2 != 0)
        {
            sum += term;
        }
        else
        {
            sum -= term;
        }
    }
    printf("%lld\n", sum);
    return 0;
}
EOF_P7

# --- Program 8: N Factorial ---
cat > Program8.c << 'EOF_P8'
#include <stdio.h>

long long factorial(int n)
{
    long long result = 1;
    int i;
    if (n < 0)
    {
        return 0;
    }
    for (i = 2; i <= n; i++)
    {
        result *= i;
    }
    return result;
}

int main()
{
    int n;
    scanf("%d", &n);
    printf("%lld\n", factorial(n));
    return 0;
}
EOF_P8

# --- Program 9: One Divided by N Factorial ---
cat > Program9.c << 'EOF_P9'
#include <stdio.h>

double inverse_factorial(int n)
{
    double result = 1.0;
    int i;
    if (n < 0)
    {
        return 0.0;
    }
    for (i = 1; i <= n; i++)
    {
        result /= i;
    }
    return result;
}

int main()
{
    int n;
    scanf("%d", &n);
    printf("%lf\n", inverse_factorial(n));
    return 0;
}
EOF_P9

# --- Program 10: X Power N Div N Factorial ---
cat > Program10.c << 'EOF_P10'
#include <stdio.h>
#include <math.h>

int main()
{
    double x;
    int n;
    double result;
    scanf("%lf%d", &x, &n);
    if (n < 0)
    {
        printf("0.000000\n");
        return 0;
    }
    if (n == 0)
    {
        printf("1.000000\n");
        return 0;
    }
    double numerator = pow(x, n);
    double denominator = 1.0;
    int i;
    for (i = 1; i <= n; i++)
    {
        denominator *= i;
    }
    result = numerator / denominator;
    printf("%lf\n", result);
    return 0;
}
EOF_P10

# --- Program 11: Multiplication by Addition ---
cat > Program11.c << 'EOF_P11'
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a, b;
    int result = 0;
    int i;
    int sign = 1;
    scanf("%d%d", &a, &b);
    if ((a < 0 && b > 0) || (a > 0 && b < 0))
    {
        sign = -1;
    }
    a = abs(a);
    b = abs(b);
    for (i = 0; i < b; i++)
    {
        result += a;
    }
    printf("%d\n", result * sign);
    return 0;
}
EOF_P11

# --- Program 12: Check if Character is Alphabetic ---
cat > Program12.c << 'EOF_P12'
#include <stdio.h>
#include <ctype.h>

int is_alphabetic(char c)
{
    return isalpha(c) != 0;
}

int main()
{
    char c;
    if (scanf(" %c", &c) != 1)
    {
        return 1;
    }
    printf("%d\n", is_alphabetic(c));
    return 0;
}
EOF_P12

# --- Program 13: Sum and Difference of Two Numbers ---
cat > Program13.c << 'EOF_P13'
#include <stdio.h>

void calculate_sum_and_diff(int a, int b, int *sum, int *diff)
{
    *sum = a + b;
    *diff = a - b;
}

int main()
{
    int num1, num2;
    int sum_result, diff_result;
    scanf("%d%d", &num1, &num2);
    calculate_sum_and_diff(num1, num2, &sum_result, &diff_result);
    printf("%d\n", sum_result);
    printf("%d\n", diff_result);
    return 0;
}
EOF_P13

# --- Program 14: Sum of Individual Digits ---
cat > Program14.c << 'EOF_P14'
#include <stdio.h>
#include <stdlib.h>

int sum_of_digits(int n)
{
    int sum = 0;
    n = abs(n);
    while (n != 0)
    {
        sum += n % 10;
        n /= 10;
    }
    return sum;
}

int main()
{
    int n;
    scanf("%d", &n);
    printf("%d\n", sum_of_digits(n));
    return 0;
}
EOF_P14

# --- Program 15: Reverse Array Elements ---
cat > Program15.c << 'EOF_P15'
#include <stdio.h>

void reverse_array(int arr[], int n)
{
    int start = 0;
    int end = n - 1;
    int temp;
    while (start < end)
    {
        temp = arr[start];
        arr[start] = arr[end];
        arr[end] = temp;
        start++;
        end--;
    }
}

int main()
{
    int n;
    int arr[100];
    int i;
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }
    reverse_array(arr, n);
    for (i = 0; i < n; i++)
    {
        printf("%d", arr[i]);
        if (i < n - 1)
        {
            printf(" ");
        }
    }
    printf("\n");
    return 0;
}
EOF_P15

# --- Program 16: Count Occurrences of Maximum ---
cat > Program16.c << 'EOF_P16'
#include <stdio.h>

int main()
{
    int n;
    int arr[100];
    int i;
    int max_val;
    int count = 0;
    scanf("%d", &n);
    if (n <= 0)
    {
        printf("0\n");
        return 0;
    }
    for (i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }
    max_val = arr[0];
    for (i = 1; i < n; i++)
    {
        if (arr[i] > max_val)
        {
            max_val = arr[i];
        }
    }
    for (i = 0; i < n; i++)
    {
        if (arr[i] == max_val)
        {
            count++;
        }
    }
    printf("%d\n", count);
    return 0;
}
EOF_P16

# --- Program 17: Second Largest Value in Array ---
cat > Program17.c << 'EOF_P17'
#include <stdio.h>
#include <limits.h>

int main()
{
    int n;
    int arr[100];
    int i;
    int max_val = INT_MIN;
    int second_max = INT_MIN;
    scanf("%d", &n);
    if (n < 2)
    {
        printf("N/A\n");
        return 0;
    }
    for (i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }
    for (i = 0; i < n; i++)
    {
        if (arr[i] > max_val)
        {
            second_max = max_val;
            max_val = arr[i];
        }
        else if (arr[i] > second_max && arr[i] != max_val)
        {
            second_max = arr[i];
        }
    }
    if (second_max == INT_MIN)
    {
        printf("N/A\n");
    }
    else
    {
        printf("%d\n", second_max);
    }
    return 0;
}
EOF_P17

# --- Program 18: Find Position of Number X ---
cat > Program18.c << 'EOF_P18'
#include <stdio.h>

int main()
{
    int n;
    int x;
    int arr[100];
    int i;
    int position = -1;
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }
    scanf("%d", &x);
    for (i = 0; i < n; i++)
    {
        if (arr[i] == x)
        {
            position = i;
            break;
        }
    }
    printf("%d\n", position);
    return 0;
}
EOF_P18

# --- Program 19: Count Vowels and Consonants ---
cat > Program19.c << 'EOF_P19'
#include <stdio.h>
#include <ctype.h>
#include <string.h>

int is_vowel(char c)
{
    c = tolower(c);
    return (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u');
}

int main()
{
    char line[1000];
    int vowels = 0;
    int consonants = 0;
    int i;
    if (fgets(line, sizeof(line), stdin) == NULL)
    {
        return 1;
    }
    for (i = 0; line[i] != '\0'; i++)
    {
        if (isalpha(line[i]))
        {
            if (is_vowel(line[i]))
            {
                vowels++;
            }
            else
            {
                consonants++;
            }
        }
    }
    printf("%d\n", vowels);
    printf("%d\n", consonants);
    return 0;
}
EOF_P19

# --- Program 20: Find String in Line Using Pointers ---
cat > Program20.c << 'EOF_P20'
#include <stdio.h>
#include <string.h>

char *find_substring(const char *haystack, const char *needle)
{
    const char *h = haystack;
    const char *n = needle;
    while (*h != '\0')
    {
        const char *temp_h = h;
        const char *temp_n = n;
        while (*temp_n != '\0' && *temp_h != '\0' && *temp_h == *temp_n)
        {
            temp_h++;
            temp_n++;
        }
        if (*temp_n == '\0')
        {
            return (char *)h;
        }
        h++;
    }
    return NULL;
}

int main()
{
    char line[1000];
    char search_str[100];
    char *result;
    if (fgets(line, sizeof(line), stdin) == NULL)
    {
        return 1;
    }
    if (fgets(search_str, sizeof(search_str), stdin) == NULL)
    {
        return 1;
    }
    line[strcspn(line, "\n")] = '\0';
    search_str[strcspn(search_str, "\n")] = '\0';
    result = find_substring(line, search_str);
    if (result != NULL)
    {
        printf("Found at position: %ld\n", result - line);
    }
    else
    {
        printf("Not found\n");
    }
    return 0;
}
EOF_P20

# --- Program 21: Compare Two Strings Using Pointer ---
cat > Program21.c << 'EOF_P21'
#include <stdio.h>

int mystrcmp(const char *s1, const char *s2)
{
    while (*s1 != '\0' && *s2 != '\0' && *s1 == *s2)
    {
        s1++;
        s2++;
    }
    return *s1 - *s2;
}

int main()
{
    char str1[100];
    char str2[100];
    int result;
    if (fgets(str1, sizeof(str1), stdin) == NULL)
    {
        return 1;
    }
    if (fgets(str2, sizeof(str2), stdin) == NULL)
    {
        return 1;
    }
    result = mystrcmp(str1, str2);
    printf("%d\n", result);
    return 0;
}
EOF_P21

# --- Program 22: Check String Palindrome Using Pointer ---
cat > Program22.c << 'EOF_P22'
#include <stdio.h>
#include <string.h>

int is_palindrome(const char *str)
{
    int len = strlen(str);
    const char *start = str;
    const char *end = str + len - 1;
    while (len > 0 && (*end == '\n' || *end == '\r'))
    {
        len--;
        end--;
    }
    if (len <= 1)
    {
        return 1;
    }
    while (start < end)
    {
        if (*start != *end)
        {
            return 0;
        }
        start++;
        end--;
    }
    return 1;
}

int main()
{
    char str[100];
    if (fgets(str, sizeof(str), stdin) == NULL)
    {
        return 1;
    }
    printf("%d\n", is_palindrome(str));
    return 0;
}
EOF_P22

# --- Program 23: Concatenate Two Strings ---
cat > Program23.c << 'EOF_P23'
#include <stdio.h>
#include <string.h>

int main()
{
    char str1[200];
    char str2[100];
    char *dest = str1;
    char *src = str2;
    if (fgets(str1, sizeof(str1) / 2, stdin) == NULL)
    {
        return 1;
    }
    if (fgets(str2, sizeof(str2), stdin) == NULL)
    {
        return 1;
    }
    str1[strcspn(str1, "\n")] = '\0';
    str2[strcspn(str2, "\n")] = '\0';
    while (*dest != '\0')
    {
        dest++;
    }
    while (*src != '\0')
    {
        *dest = *src;
        dest++;
        src++;
    }
    *dest = '\0';
    printf("%s\n", str1);
    return 0;
}
EOF_P23

# --- Program 24: Display Pointer Content and Address ---
cat > Program24.c << 'EOF_P24'
#include <stdio.h>

int main()
{
    int arr[] = {10, 20, 30, 40, 50};
    int *ptr_int = arr;
    char char_arr[] = "ABCDE";
    char *ptr_char = char_arr;
    printf("%p %d\n", (void *)ptr_int, *ptr_int);
    ptr_int++;
    printf("%p %d\n", (void *)ptr_int, *ptr_int);
    printf("%p %c\n", (void *)ptr_char, *ptr_char);
    ptr_char = ptr_char + 2;
    printf("%p %c\n", (void *)ptr_char, *ptr_char);
    return 0;
}
EOF_P24

# --- Program 25: Generate Fibonacci Series ---
cat > Program25.c << 'EOF_P25'
#include <stdio.h>

int main()
{
    int n;
    int a = 0;
    int b = 1;
    int next;
    int i;
    scanf("%d", &n);
    if (n >= 1)
    {
        printf("%d", a);
    }
    if (n >= 2)
    {
        printf(" %d", b);
    }
    for (i = 3; i <= n; i++)
    {
        next = a + b;
        printf(" %d", next);
        a = b;
        b = next;
    }
    printf("\n");
    return 0;
}
EOF_P25

# --- Program 26: Check if Number is Prime ---
cat > Program26.c << 'EOF_P26'
#include <stdio.h>
#include <math.h>

int is_prime(int n)
{
    int i;
    if (n <= 1)
    {
        return 0;
    }
    if (n <= 3)
    {
        return 1;
    }
    if (n % 2 == 0 || n % 3 == 0)
    {
        return 0;
    }
    for (i = 5; i * i <= n; i = i + 6)
    {
        if (n % i == 0 || n % (i + 2) == 0)
        {
            return 0;
        }
    }
    return 1;
}

int main()
{
    int n;
    scanf("%d", &n);
    printf("%d\n", is_prime(n));
    return 0;
}
EOF_P26

# --- Program 27: Check if Number is Palindrome ---
cat > Program27.c << 'EOF_P27'
#include <stdio.h>

int is_palindrome_number(int n)
{
    int original = n;
    int reversed = 0;
    int remainder;
    if (n < 0)
    {
        return 0;
    }
    while (n != 0)
    {
        remainder = n % 10;
        reversed = reversed * 10 + remainder;
        n /= 10;
    }
    return original == reversed;
}

int main()
{
    int n;
    scanf("%d", &n);
    printf("%d\n", is_palindrome_number(n));
    return 0;
}
EOF_P27

# --- Program 28: Check if Number is Armstrong ---
cat > Program28.c << 'EOF_P28'
#include <stdio.h>
#include <math.h>

int is_armstrong(int n)
{
    int original = n;
    int num_digits = 0;
    int temp = n;
    int sum = 0;
    int remainder;
    if (n < 0)
    {
        return 0;
    }
    while (temp != 0)
    {
        temp /= 10;
        num_digits++;
    }
    temp = original;
    while (temp != 0)
    {
        remainder = temp % 10;
        sum += (int)round(pow(remainder, num_digits));
        temp /= 10;
    }
    return original == sum;
}

int main()
{
    int n;
    scanf("%d", &n);
    printf("%d\n", is_armstrong(n));
    return 0;
}
EOF_P28

# --- Program 29: Convert Binary to Decimal ---
cat > Program29.c << 'EOF_P29'
#include <stdio.h>
#include <math.h>

int main()
{
    long long binary;
    int decimal = 0;
    int i = 0;
    int remainder;
    scanf("%lld", &binary);
    while (binary != 0)
    {
        remainder = binary % 10;
        binary /= 10;
        if (remainder == 1)
        {
            decimal += (int)pow(2, i);
        }
        i++;
    }
    printf("%d\n", decimal);
    return 0;
}
EOF_P29

# --- Program 30: List Exact Divisors ---
cat > Program30.c << 'EOF_P30'
#include <stdio.h>

int main()
{
    int n;
    int i;
    scanf("%d", &n);
    if (n <= 0)
    {
        return 0;
    }
    for (i = 1; i <= n; i++)
    {
        if (n % i == 0)
        {
            printf("%d\n", i);
        }
    }
    return 0;
}
EOF_P30

# --- Program 31: Complex Number Operations ---
cat > Program31.c << 'EOF_P31'
#include <stdio.h>

typedef struct
{
    double real;
    double imag;
} Complex;

Complex add(Complex c1, Complex c2)
{
    Complex result;
    result.real = c1.real + c2.real;
    result.imag = c1.imag + c2.imag;
    return result;
}

Complex subtract(Complex c1, Complex c2)
{
    Complex result;
    result.real = c1.real - c2.real;
    result.imag = c1.imag - c2.imag;
    return result;
}

Complex multiply(Complex c1, Complex c2)
{
    Complex result;
    result.real = c1.real * c2.real - c1.imag * c2.imag;
    result.imag = c1.real * c2.imag + c1.imag * c2.real;
    return result;
}

Complex divide(Complex c1, Complex c2)
{
    Complex result;
    double denominator = c2.real * c2.real + c2.imag * c2.imag;
    if (denominator == 0)
    {
        result.real = 0;
        result.imag = 0;
        return result;
    }
    result.real = (c1.real * c2.real + c1.imag * c2.imag) / denominator;
    result.imag = (c1.imag * c2.real - c1.real * c2.imag) / denominator;
    return result;
}

int main()
{
    Complex c1, c2, res;
    scanf("%lf%lf", &c1.real, &c1.imag);
    scanf("%lf%lf", &c2.real, &c2.imag);
    res = add(c1, c2);
    printf("%lf %lf\n", res.real, res.imag);
    res = subtract(c1, c2);
    printf("%lf %lf\n", res.real, res.imag);
    res = multiply(c1, c2);
    printf("%lf %lf\n", res.real, res.imag);
    res = divide(c1, c2);
    printf("%lf %lf\n", res.real, res.imag);
    return 0;
}
EOF_P31

# --- Program 32: Student Structure Input and Display ---
cat > Program32.c << 'EOF_P32'
#include <stdio.h>

typedef struct
{
    int door_no;
    char street[50];
    char place[50];
    int pin;
} Address;

typedef struct
{
    char name[10];
    int roll_no;
    Address address;
} Student;

void display_student(Student s)
{
    printf("%s\n", s.name);
    printf("%d\n", s.roll_no);
    printf("%d, %s, %s, %d\n", s.address.door_no, s.address.street, s.address.place, s.address.pin);
}

int main()
{
    Student students[10];
    int i;
    for (i = 0; i < 10; i++)
    {
        scanf("%9s", students[i].name);
        scanf("%d", &students[i].roll_no);
        scanf("%d", &students[i].address.door_no);
        scanf("%49s", students[i].address.street);
        scanf("%49s", students[i].address.place);
        scanf("%d", &students[i].address.pin);
    }
    for (i = 0; i < 10; i++)
    {
        display_student(students[i]);
    }
    return 0;
}
EOF_P32

# --- Program 33: Compare Two Files Line by Line ---
cat > Program33.c << 'EOF_P33'
#include <stdio.h>
#include <string.h>

int main()
{
    FILE *fp1, *fp2;
    char filename1[100], filename2[100];
    char line1[256], line2[256];
    int line = 1;
    scanf("%99s", filename1);
    scanf("%99s", filename2);
    fp1 = fopen(filename1, "r");
    fp2 = fopen(filename2, "r");
    if (fp1 == NULL || fp2 == NULL)
    {
        return 1;
    }
    while (fgets(line1, sizeof(line1), fp1) != NULL && fgets(line2, sizeof(line2), fp2) != NULL)
    {
        if (strcmp(line1, line2) != 0)
        {
            printf("%d: %s", line, line1);
            fclose(fp1);
            fclose(fp2);
            return 0;
        }
        line++;
    }
    if (fgets(line1, sizeof(line1), fp1) != NULL || fgets(line2, sizeof(line2), fp2) != NULL)
    {
        printf("%d: Files have different lengths\n", line);
    }
    else
    {
        printf("Files are identical\n");
    }
    fclose(fp1);
    fclose(fp2);
    return 0;
}
EOF_P33

# --- Program 34: Append File 2 to File 1 ---
cat > Program34.c << 'EOF_P34'
#include <stdio.h>

int main()
{
    FILE *fp1, *fp2;
    char buffer[256];
    size_t bytes_read;
    fp1 = fopen("exam1.dat", "a");
    fp2 = fopen("exam2.dat", "r");
    if (fp1 == NULL || fp2 == NULL)
    {
        if (fp1 != NULL)
            fclose(fp1);
        if (fp2 != NULL)
            fclose(fp2);
        return 1;
    }
    while ((bytes_read = fread(buffer, 1, sizeof(buffer), fp2)) > 0)
    {
        fwrite(buffer, 1, bytes_read, fp1);
    }
    fclose(fp1);
    fclose(fp2);
    printf("exam2.dat appended to exam1.dat\n");
    return 0;
}
EOF_P34

# --- Program 35: Display File in Reverse Order ---
cat > Program35.c << 'EOF_P35'
#include <stdio.h>
#include <stdlib.h>

int main()
{
    FILE *fp;
    char filename[100];
    long size;
    char *buffer;
    long i;
    scanf("%99s", filename);
    fp = fopen(filename, "r");
    if (fp == NULL)
    {
        return 1;
    }
    fseek(fp, 0, SEEK_END);
    size = ftell(fp);
    buffer = (char *)malloc(size);
    if (buffer == NULL)
    {
        fclose(fp);
        return 1;
    }
    fseek(fp, 0, SEEK_SET);
    if (fread(buffer, 1, size, fp) != size)
    {
        free(buffer);
        fclose(fp);
        return 1;
    }
    for (i = size - 1; i >= 0; i--)
    {
        putchar(buffer[i]);
    }
    printf("\n");
    free(buffer);
    fclose(fp);
    return 0;
}
EOF_P35

# --- Program 36: File Manipulations on emp.txt ---
cat > Program36.c << 'EOF_P36'
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct
{
    int id;
    char name[20];
    double salary;
} Employee;

void write_record(FILE *fp, Employee emp)
{
    fprintf(fp, "%d %s %lf\n", emp.id, emp.name, emp.salary);
}

int main()
{
    FILE *fp;
    Employee emp;
    fp = fopen("emp.txt", "a");
    if (fp == NULL)
    {
        return 1;
    }
    emp.id = 1;
    strcpy(emp.name, "John");
    emp.salary = 50000.00;
    write_record(fp, emp);
    emp.id = 2;
    strcpy(emp.name, "Jane");
    emp.salary = 60000.50;
    write_record(fp, emp);
    fclose(fp);
    fp = fopen("emp.txt", "r");
    if (fp == NULL)
    {
        return 1;
    }
    while (fscanf(fp, "%d %s %lf", &emp.id, emp.name, &emp.salary) == 3)
    {
        printf("%d %s %lf\n", emp.id, emp.name, emp.salary);
    }
    fclose(fp);
    return 0;
}
EOF_P36

# --- Program 37: Sort Names in Alphabetical Order ---
cat > Program37.c << 'EOF_P37'
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int compare_names(const void *a, const void *b)
{
    return strcmp(*(const char **)a, *(const char **)b);
}

int main()
{
    char names[5][30];
    char *ptr[5];
    int n = 5;
    int i;
    for (i = 0; i < n; i++)
    {
        if (fgets(names[i], 30, stdin) == NULL)
        {
            break;
        }
        names[i][strcspn(names[i], "\n")] = 0;
        ptr[i] = names[i];
    }
    n = i;
    qsort(ptr, n, sizeof(char *), compare_names);
    for (i = 0; i < n; i++)
    {
        printf("%s\n", ptr[i]);
    }
    return 0;
}
EOF_P37

# --- Program 38: Delete Vowels from Sentence ---
cat > Program38.c << 'EOF_P38'
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int is_vowel(char c)
{
    c = tolower(c);
    return (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u');
}

int main()
{
    char sentence[81];
    char *read_ptr = sentence;
    char *write_ptr = sentence;
    if (fgets(sentence, sizeof(sentence), stdin) == NULL)
    {
        return 1;
    }
    while (*read_ptr)
    {
        if (!is_vowel(*read_ptr))
        {
            *write_ptr = *read_ptr;
            write_ptr++;
        }
        read_ptr++;
    }
    *write_ptr = '\0';
    printf("%s\n", sentence);
    return 0;
}
EOF_P38

# --- Program 39: Delete All Occurrences of The ---
cat > Program39.c << 'EOF_P39'
#include <stdio.h>
#include <string.h>

int is_match(const char *ptr, const char *word, int len, const char *start_of_sentence)
{
    int i;
    for (i = 0; i < len; i++)
    {
        if (*(ptr + i) != *(word + i))
        {
            return 0;
        }
    }
    if (*(ptr + len) == ' ' || *(ptr + len) == '\0' || *(ptr + len) == '\n')
    {
        if (ptr == start_of_sentence || *(ptr - 1) == ' ')
        {
            return 1;
        }
    }
    return 0;
}

int main()
{
    char sentence[1000];
    const char *word = "the";
    int word_len = 3;
    char *read_ptr;
    char *write_ptr;
    if (fgets(sentence, sizeof(sentence), stdin) == NULL)
    {
        return 1;
    }
    read_ptr = sentence;
    write_ptr = sentence;
    while (*read_ptr)
    {
        if (is_match(read_ptr, word, word_len, sentence))
        {
            read_ptr += word_len;
            if (*read_ptr == ' ')
            {
                read_ptr++;
            }
        }
        else
        {
            *write_ptr = *read_ptr;
            write_ptr++;
            read_ptr++;
        }
    }
    *write_ptr = '\0';
    printf("%s\n", sentence);
    return 0;
}
EOF_P39

# --- Program 40: Count Successive Vowels ---
cat > Program40.c << 'EOF_P40'
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int is_vowel(char c)
{
    c = tolower(c);
    return (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u');
}

int main()
{
    char line[1000];
    char *ptr;
    int count = 0;
    if (fgets(line, sizeof(line), stdin) == NULL)
    {
        return 1;
    }
    ptr = line;
    while (*ptr != '\0' && *(ptr + 1) != '\0')
    {
        if (is_vowel(*ptr) && is_vowel(*(ptr + 1)))
        {
            count++;
        }
        ptr++;
    }
    printf("%d\n", count);
    return 0;
}
EOF_P40

# --- Program 41: Implement Built-in String Functions ---
cat > Program41.c << 'EOF_P41'
#include <stdio.h>
#include <stddef.h>

size_t mystrlen(const char *s)
{
    const char *p = s;
    while (*p != '\0')
    {
        p++;
    }
    return p - s;
}

char *mystrcat(char *dest, const char *src)
{
    char *ret = dest;
    while (*dest != '\0')
    {
        dest++;
    }
    while (*src != '\0')
    {
        *dest = *src;
        dest++;
        src++;
    }
    *dest = '\0';
    return ret;
}

char *mystrcpy(char *dest, const char *src)
{
    char *ret = dest;
    while ((*dest++ = *src++) != '\0')
        ;
    return ret;
}

int mystrcmp(const char *s1, const char *s2)
{
    while (*s1 != '\0' && *s2 != '\0' && *s1 == *s2)
    {
        s1++;
        s2++;
    }
    return *s1 - *s2;
}

char *mysubstr(char *dest, const char *src, size_t start_index, size_t length)
{
    size_t i;
    for (i = 0; i < length && src[start_index + i] != '\0'; i++)
    {
        dest[i] = src[start_index + i];
    }
    dest[i] = '\0';
    return dest;
}

int main()
{
    char s1[100] = "hello";
    char s2[50] = " world";
    char dest[100];
    char sub[20];
    printf("%lu\n", mystrlen(s1));
    mystrcat(s1, s2);
    printf("%s\n", s1);
    mystrcpy(dest, s1);
    printf("%s\n", dest);
    printf("%d\n", mystrcmp(s1, dest));
    mysubstr(sub, dest, 6, 5);
    printf("%s\n", sub);
    return 0;
}
EOF_P41

# --- Program 42: Check String Palindrome ---
cat > Program42.c << 'EOF_P42'
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int is_palindrome(const char *str)
{
    int len = strlen(str);
    int i = 0;
    int j = len - 1;
    while (j >= 0 && (str[j] == '\n' || str[j] == '\r'))
    {
        j--;
    }
    while (i < j)
    {
        if (tolower(str[i]) != tolower(str[j]))
        {
            return 0;
        }
        i++;
        j--;
    }
    return 1;
}

int main()
{
    char str[100];
    if (fgets(str, sizeof(str), stdin) == NULL)
    {
        return 1;
    }
    printf("%d\n", is_palindrome(str));
    return 0;
}
EOF_P42

# --- Program 43: Display File in Uppercase ---
cat > Program43.c << 'EOF_P43'
#include <stdio.h>
#include <ctype.h>

int main()
{
    FILE *fp;
    char filename[100];
    int c;
    scanf("%99s", filename);
    fp = fopen(filename, "r");
    if (fp == NULL)
    {
        return 1;
    }
    while ((c = fgetc(fp)) != EOF)
    {
        putchar(toupper(c));
    }
    fclose(fp);
    return 0;
}
EOF_P43

# --- Program 44: Count File Components ---
cat > Program44.c << 'EOF_P44'
#include <stdio.h>
#include <ctype.h>

int main()
{
    FILE *fp;
    char filename[100];
    int c;
    long chars = 0;
    long spaces = 0;
    long tabs = 0;
    long newlines = 0;
    scanf("%99s", filename);
    fp = fopen(filename, "r");
    if (fp == NULL)
    {
        return 1;
    }
    while ((c = fgetc(fp)) != EOF)
    {
        chars++;
        if (c == ' ')
        {
            spaces++;
        }
        else if (c == '\t')
        {
            tabs++;
        }
        else if (c == '\n')
        {
            newlines++;
        }
    }
    fclose(fp);
    printf("%ld\n", chars);
    printf("%ld\n", spaces);
    printf("%ld\n", tabs);
    printf("%ld\n", newlines);
    return 0;
}
EOF_P44

# --- Program 45: Copy File Contents ---
cat > Program45.c << 'EOF_P45'
#include <stdio.h>

int main()
{
    FILE *src_fp, *dest_fp;
    char src_filename[100], dest_filename[100];
    int c;
    scanf("%99s", src_filename);
    scanf("%99s", dest_filename);
    src_fp = fopen(src_filename, "r");
    if (src_fp == NULL)
    {
        return 1;
    }
    dest_fp = fopen(dest_filename, "w");
    if (dest_fp == NULL)
    {
        fclose(src_fp);
        return 1;
    }
    while ((c = fgetc(src_fp)) != EOF)
    {
        fputc(c, dest_fp);
    }
    fclose(src_fp);
    fclose(dest_fp);
    printf("File copied successfully\n");
    return 0;
}
EOF_P45

# --- Program 46: Write Strings to File ---
cat > Program46.c << 'EOF_P46'
#include <stdio.h>
#include <string.h>

int main()
{
    FILE *fp;
    char filename[100];
    char str[100];
    scanf("%99s", filename);
    fp = fopen(filename, "w");
    if (fp == NULL)
    {
        return 1;
    }
    while (fgets(str, sizeof(str), stdin) != NULL)
    {
        if (strcmp(str, "QUIT\n") == 0 || strcmp(str, "quit\n") == 0)
        {
            break;
        }
        fputs(str, fp);
    }
    fclose(fp);
    printf("Strings written to file\n");
    return 0;
}
EOF_P46

# --- Program 47: Read Strings from File ---
cat > Program47.c << 'EOF_P47'
#include <stdio.h>

int main()
{
    FILE *fp;
    char filename[100];
    char str[100];
    scanf("%99s", filename);
    fp = fopen(filename, "r");
    if (fp == NULL)
    {
        return 1;
    }
    while (fgets(str, sizeof(str), fp) != NULL)
    {
        printf("%s", str);
    }
    fclose(fp);
    return 0;
}
EOF_P47

# --- Program 48: Book Structure and Display ---
cat > Program48.c << 'EOF_P48'
#include <stdio.h>
#include <string.h>

typedef struct
{
    char title[100];
    double price;
    int pages;
} Book;

int main()
{
    Book book;
    if (fgets(book.title, sizeof(book.title), stdin) == NULL)
    {
        return 1;
    }
    book.title[strcspn(book.title, "\n")] = 0;
    scanf("%lf", &book.price);
    scanf("%d", &book.pages);
    printf("%s\n", book.title);
    printf("%lf\n", book.price);
    printf("%d\n", book.pages);
    return 0;
}
EOF_P48

# --- Program 49: Determine Tomorrow's Date ---
cat > Program49.c << 'EOF_P49'
#include <stdio.h>

typedef struct
{
    int day;
    int month;
    int year;
} Date;

int is_leap(int year)
{
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

int days_in_month(int month, int year)
{
    if (month == 2)
    {
        return is_leap(year) ? 29 : 28;
    }
    else if (month == 4 || month == 6 || month == 9 || month == 11)
    {
        return 30;
    }
    else
    {
        return 31;
    }
}

Date get_tomorrow(Date today)
{
    Date tomorrow = today;
    int max_day = days_in_month(today.month, today.year);
    tomorrow.day++;
    if (tomorrow.day > max_day)
    {
        tomorrow.day = 1;
        tomorrow.month++;
        if (tomorrow.month > 12)
        {
            tomorrow.month = 1;
            tomorrow.year++;
        }
    }
    return tomorrow;
}

int main()
{
    Date today, tomorrow;
    scanf("%d%d%d", &today.day, &today.month, &today.year);
    tomorrow = get_tomorrow(today);
    printf("%d %d %d\n", tomorrow.day, tomorrow.month, tomorrow.year);
    return 0;
}
EOF_P49

# --- Program 50: Display Students List in Ascending Order ---
cat > Program50.c << 'EOF_P50'
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct
{
    char name[50];
    int roll_no;
    int age;
} Student;

int compare_students(const void *a, const void *b)
{
    return strcmp(((Student *)a)->name, ((Student *)b)->name);
}

int main()
{
    int n;
    Student students[100];
    int i;
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        scanf("%49s", students[i].name);
        scanf("%d", &students[i].roll_no);
        scanf("%d", &students[i].age);
    }
    qsort(students, n, sizeof(Student), compare_students);
    for (i = 0; i < n; i++)
    {
        printf("%s %d %d\n", students[i].name, students[i].roll_no, students[i].age);
    }
    return 0;
}
EOF_P50

# --- Program 51: Display Student Mark Sheet ---
cat > Program51.c << 'EOF_P51'
#include <stdio.h>

typedef struct
{
    int roll_no;
    char name[50];
    int marks[3];
    int total;
    double percentage;
} MarkSheet;

void calculate_marks(MarkSheet *ms)
{
    int i;
    ms->total = 0;
    for (i = 0; i < 3; i++)
    {
        ms->total += ms->marks[i];
    }
    ms->percentage = (double)ms->total / 3.0;
}

int main()
{
    MarkSheet ms;
    int i;
    scanf("%d", &ms.roll_no);
    scanf("%49s", ms.name);
    for (i = 0; i < 3; i++)
    {
        scanf("%d", &ms.marks[i]);
    }
    calculate_marks(&ms);
    printf("Mark Sheet\n");
    printf("%d\n", ms.roll_no);
    printf("%s\n", ms.name);
    for (i = 0; i < 3; i++)
    {
        printf("%d\n", ms.marks[i]);
    }
    printf("%d\n", ms.total);
    printf("%lf\n", ms.percentage);
    return 0;
}
EOF_P51

# --- Program 52: Display Shopping Bill ---
cat > Program52.c << 'EOF_P52'
#include <stdio.h>

typedef struct
{
    char item_name[50];
    int quantity;
    double price;
    double total;
} Item;

typedef struct
{
    Item items[10];
    int count;
    double grand_total;
} Bill;

void calculate_bill(Bill *bill)
{
    int i;
    bill->grand_total = 0;
    for (i = 0; i < bill->count; i++)
    {
        bill->items[i].total = bill->items[i].quantity * bill->items[i].price;
        bill->grand_total += bill->items[i].total;
    }
}

int main()
{
    Bill bill;
    int i;
    scanf("%d", &bill.count);
    for (i = 0; i < bill.count; i++)
    {
        scanf("%49s", bill.items[i].item_name);
        scanf("%d", &bill.items[i].quantity);
        scanf("%lf", &bill.items[i].price);
    }
    calculate_bill(&bill);
    printf("Shopping Bill\n");
    for (i = 0; i < bill.count; i++)
    {
        printf("%s %d %lf %lf\n", bill.items[i].item_name, bill.items[i].quantity, bill.items[i].price, bill.items[i].total);
    }
    printf("%lf\n", bill.grand_total);
    return 0;
}
EOF_P52

# --- Program 53: Shift Unsigned Integer ---
cat > Program53.c << 'EOF_P53'
#include <stdio.h>

int count_ones(unsigned int n)
{
    int count = 0;
    while (n > 0)
    {
        if (n & 1)
        {
            count++;
        }
        n >>= 1;
    }
    return count;
}

unsigned int shift_integer(unsigned int n, int count)
{
    if (count > 0)
    {
        return n << count;
    }
    else if (count < 0)
    {
        return n >> -count;
    }
    else
    {
        return n;
    }
}

int main()
{
    unsigned int n;
    int ones_count;
    unsigned int result;
    scanf("%u", &n);
    ones_count = count_ones(n);
    result = shift_integer(n, ones_count);
    printf("%u\n", result);
    result = shift_integer(n, -ones_count);
    printf("%u\n", result);
    return 0;
}
EOF_P53

# --- Program 54: Copy File Using Command Line Args ---
cat > Program54.c << 'EOF_P54'
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    FILE *src_fp, *dest_fp;
    int c;
    if (argc != 3)
    {
        return 1;
    }
    src_fp = fopen(argv[1], "r");
    if (src_fp == NULL)
    {
        return 1;
    }
    dest_fp = fopen(argv[2], "w");
    if (dest_fp == NULL)
    {
        fclose(src_fp);
        return 1;
    }
    while ((c = fgetc(src_fp)) != EOF)
    {
        fputc(c, dest_fp);
    }
    fclose(src_fp);
    fclose(dest_fp);
    return 0;
}
EOF_P54

echo "54 C files (Program1.c through Program54.c) created successfully."

# After running this, you can create your zip file with:
# zip c_programs.zip Program*.c
