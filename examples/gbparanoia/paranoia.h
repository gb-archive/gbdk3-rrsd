#ifndef PARANOIA_H
#define PARANOIA_H

/* defines for gameboy */
#define Single
#define NOSIGNAL
//#define NOPAUSE
#define fflush(f)

#ifndef NOSIGNAL
#include <signal.h>
#endif
#include <setjmp.h>

#ifdef Single
    #define FLOAT float
    #define FABS(x) (float)fabsf((float)(x))
    #define FLOOR(x) (float)floorf((float)(x))
    #define LOG(x) (float)logf_banked((float)(x))
    #define SQRT(x) (float)sqrtf_banked((float)(x))
    #define POW(x,y) (float)powf_banked((float)(x),(float)(y))
#else
    #define FLOAT double
    #define FABS(x) fabs(x)
    #define FLOOR(x) floor(x)
    #define LOG(x) log(x)
    #define POW(x,y) pow(x,y)
    #define SQRT(x) sqrt(x)
#endif

extern jmp_buf ovfl_buf;
#ifdef KR_headers
    #define VOID /* void */
    #define INT /* int */
    #define FP /* FLOAT */
    #define CHARP /* char * */
    #define CHARPP /* char ** */
    extern double fabs(), floor(), log(), pow(), sqrt();
    extern void exit();
    typedef void (*Sig_type)();
    extern FLOAT Sign(), Random();
    extern void BadCond();
    extern void SqXMinX();
    extern void TstCond();
    extern void notify();
    extern int read();
#else
    #define VOID void
    #define INT int
    #define FP FLOAT
    #define CHARP char *
    #define CHARPP char **
    #ifdef __STDC__
        #include <stdlib.h>
        #include <math.h>
    #else
            extern double fabs(double);
            extern floor(double);
            extern log(double);
            extern double pow(double,double);
            extern sqrt(double);
            extern void exit(INT);
    #endif
    typedef void (*Sig_type)(int);
    extern int read(int, char *, int);
    extern void exit(int);
#endif

extern Sig_type sigsave;
extern void sigfpe(INT);

#define KEYBOARD 0

extern FLOAT Radix, BInvrse, RadixD2, BMinusU2;

/*Small floating point constants.*/
extern const FLOAT Zero;
extern const FLOAT Half;
extern const FLOAT One;
extern const FLOAT Two;
extern const FLOAT Three;
extern const FLOAT Four;
extern const FLOAT Five;
extern const FLOAT Eight;
extern const FLOAT Nine;
extern const FLOAT TwentySeven;
extern const FLOAT ThirtyTwo;
extern const FLOAT TwoForty;
extern const FLOAT MinusOne;
extern const FLOAT OneAndHalf;
/*Integer constants*/
extern const int NoTrials;
#define False 0
#define True 1

/* Definitions for declared types 
	Guard == (Yes, No);
	Rounding == (Chopped, Rounded, Other);
	Message == packed array [1..40] of char;
	Class == (Flaw, Defect, Serious, Failure);
	  */
#define Yes 1
#define No  0
#define Chopped 2
#define Rounded 1
#define Other   0
#define Flaw    3
#define Defect  2
#define Serious 1
#define Failure 0
typedef int Guard, Rounding, Class;
typedef char Message;

/* Declarations of Variables */
extern int Indx;
extern char ch[8];
extern FLOAT AInvrse, A1;
extern FLOAT C, CInvrse;
extern FLOAT D, FourD;
extern FLOAT E0, E1, Exp2, E3, MinSqEr;
extern FLOAT SqEr, MaxSqEr, E9;
extern FLOAT Third;
extern FLOAT F6, F9;
extern FLOAT H, HInvrse;
extern int I;
extern FLOAT StickyBit, J;
extern FLOAT MyZero;
extern FLOAT Precision;
extern FLOAT Q, Q9;
extern FLOAT R, Random9;
extern FLOAT T, Underflow, S;
extern FLOAT OneUlp, UfThold, U1, U2;
extern FLOAT V, V0, V9;
extern FLOAT W;
extern FLOAT X, X1, X2, X8, Random1;
extern FLOAT Y, Y1, Y2, Random2;
extern FLOAT Z, PseudoZero, Z1, Z2, Z9;
extern int ErrCnt[4];
extern int fpecount;
extern int Milestone;
extern int PageNo;
extern int M, N, N1;
extern Guard GMult, GDiv, GAddSub;
extern Rounding RMult, RDiv, RAddSub, RSqrt;
extern int Break, Done, NotMonot, Monot, Anomaly, IEEE,
		SqRWrng, UfNGrad;

extern void part1(VOID) banked;
extern void part2(VOID) banked;
extern void part3(VOID) banked;
extern void part4(VOID) banked;
extern void part5(VOID) banked;
extern void part6(VOID) banked;
extern void part7(VOID) banked;
extern int part8(VOID) banked;
extern float powf_banked(float x, float y) banked;
extern float logf_banked(float x) banked;
extern float sqrtf_banked(float x) banked;
#endif
