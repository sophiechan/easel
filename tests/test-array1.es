int a[5][3];
a[3][2] = 9;

function int foo() { 
    int b[5][3];
    b[3][2] = 99;
    print(a[3][2]);
    print(b[3][2]);
}

foo();
