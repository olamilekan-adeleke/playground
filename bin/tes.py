class Solution:
    def gcd(self, a: int, b: int):
        if b <= 0:
            return a
        else:
            return self.gcd(b, a % b)


    def gcdOfStrings(self, str1: str, str2: str) -> str:
        print(str1+str2)
        print(str2+str1)
        if str1 + str2 != str2 + str1:
            return ""
        else:
            print('str1: '+ str(len(str1)))
            print('str2: '+ str(len(str2)))
            
            k = self.gcd(len(str1), len(str2))
            print(k)
            return str1[:k]


# print(Solution().gcdOfStrings('ABCABCEE', 'ABC'))
# print(Solution().gcdOfStrings('ABABAB', 'ABAB'))
# print(Solution().gcdOfStrings('LEET', 'CODE'))


def power(base, exponent):
    if exponent <= 0:
        return 1
    else:
        return base * power(base, exponent - 1)
    
def factorial(num):
    if num <= 0:
        return 1
    else:
        return num * factorial(num - 1)
    
    
print(factorial(4))