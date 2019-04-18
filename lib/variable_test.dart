// Final and const

// If you never intend to change a variable,
//  use final or const, either instead of var or in addition to a type.
//   A final variable can be set only once;
//    a const variable is a compile-time constant.
//     (Const variables are implicitly final.) 
//     A final top-level or class variable is initialized the first time it’s used

final name='Bob';
const name_c='Bob';

//  If the const variable is at the class level, mark it static const. 
// can not change it 
// name_c="Alan";