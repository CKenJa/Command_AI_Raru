# minecraft floating point arithmetic
A utility datapack for doing math operations in a configurable base

*If you encounter any miscalculations please file an issue with the inputs and the output as well as the error code, if any, that is on the scoreboard `error= ckenja.ai_raru.arr_math.main`*

## Format
Numbers in this are formatted in a specific way to store all necessary data related to the number you are inputting
> `{dec:0,num:[],pol:1,base:0}`
- dec: the position of the decimal point from the right
- num: the list of numbers in order
- pol: 1 if the number is positive, -1 if the number is negitive
- base: the base that the number is in, base 2 for bianary, base 10 for decimal, 16 for hexadecimal 
- - *supported bases are* `2^1 (2)` *to* `2^30-1 (1073741823)`

#### Examples:
- -12.34 = `{dec:2,num:[1,2,3,4],pol:-1,base:10}`
- 11011 = `{dec:0,num:[1,1,0,1,1],pol:1,base:2}`
- 2b6a = `{dec:0,num:[2,11,6,10],pol:1,base:16}`

## Operations
call an operation with `function ckenja.ai_raru.arr_math:call/<operation name>`
### add
adds the input values together
### subtract
subtracts the input values
### multiply
multiples the first value by the second value
### divide
divides the first value by the second value
- configurable maximum decimal precision, set with `/scoreboard players set mdp= ckenja.ai_raru.arr_math.main x`, where x is the maximum precession you want (default 16)
- remainder is output into `rem` array in the output object
### compare 
compares the input values and outputs what input is the greatest
- compares absolute value of the arrays, polarity is not accounted for
- outputs in the output object as `{result:x}`, where x is the greatest array, if equal it is 0
### scoreboard
#### import
this converts a scoreboard value into a formatted number in the output object
- put your input in score `in= ckenja.ai_raru.arr_math.main`
- can be configured to a different base by setting scoreboard value `base= ckenja.ai_raru.arr_math.main`
#### export
this converts a formatted number object into a scoreboard value
- put your input into `storage ckenja.ai_raru.arr_math:in var1`, output will be in score `out= ckenja.ai_raru.arr_math.main`
- decimal points are ignored
### convert
#### flatten
converts a formatted number into a double in the output object
- put your input into `storage ckenja.ai_raru.arr_math:in var1`, output will be in `storage ckenja.ai_raru.arr_math:main out.num`
- can only correctly handle decimal points for base 10 numbers
#### base
converts the first input into a different base, specified by the second input
- the base you want to convert into must be written in the base of the first value 
- for example if you want to convert into base 16 from base 10 you would put `{dec:0,num:[1,6],pol:1,base:10}`
- currently decimal point positions are not accounted for, the base conversion is handled as if there are no decimal points

## Use
### Setup
- `/function ckenja.ai_raru.arr_math:setup` creates scoreboards and storage spaces
- `/function ckenja.ai_raru.arr_math:reset` fixes scoreboard and storage spaces if a calculation is terminated before it finishes
### Input and output
- `/data modify storage ckenja.ai_raru.arr_math:in var1 <number object>` to input value one
- `/data modify storage ckenja.ai_raru.arr_math:in var2 <number object>` to input value two
- `/data get storage ckenja.ai_raru.arr_math:main out` to read the output
### Error Codes
- `10-19` scoreboard error (overflow error)
- `20-29` command error (`maxCommandChainLength` hit max)
- `30-39` base error (incompatible base values in inputs)
