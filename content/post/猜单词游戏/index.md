---
title: 自我介绍
description: introduce myself
date: 2026-07-18 00:00:00+0000
weight: -9998
tags:
    - 初中OI启示录
---

你好,我是现在征服(网名),先做一个自我介绍。  
作者认为自己拿到奖项,运气成分占一半:  
1.作者在2025CSP-J1中**莫名其妙**76.5分。  
2.作者在2025CSP-J2中在看到[T4](https://www.luogu.com.cn/problem/P14360)时想起2025CSP-J1前看到的子集枚举。立增40分,以高于一等线3分得到一等。换个说法,少一个测试点得分就二等。  
3.作者在科大国创杯(初中省赛)的[T2](https://www.luogu.com.cn/problem/P16342)中通过观察样例(说白了,没有任何证明)写出了如下的代码：  
```cpp
//adjust r
#include<bits/stdc++.h>
using namespace std;
typedef long long ll;

int main()
{
	ll a,b;
	cin>>a>>b;
	if(a<=1e6&&b<=1e6)
    {
        ll ans=0x7f7f7f7f;
        for(int i=1;i<=1e6;i++)
        {
            ll bl=a/i;
            ans=min(ans,abs(b-i)+min(abs(bl*i-a),abs((bl+1)*i-a)));
        }
        cout<<ans;
    }
    else{
        ll ans=0x7f7f7f7f;
        for(int i=0;i<=1e6;i++)
        {
			ll bb=b+i;
            ll bl=a/bb;
            ans=min(ans,abs(i)+min(abs(bl*bb-a),abs((bl+1)*bb-a)));
            bb=b-i;
            if(bb<1) continue;
            bl=a/bb;
            ans=min(ans,abs(i)+min(abs(bl*bb-a),abs((bl+1)*bb-a)));
        }
        cout<<ans;
    }
	return 0;
}
```
相当于对于测试点1-7枚举a,其余测试点枚举$[\max($1$,b-$10^6$),$b$+$10^6$]$ 
正解是枚举$[1,$2b$]$,本题$b\le10^6$,恰好也算作正解。本题得90分。  
3.作者在科大国创杯(初中省赛)的[T3](https://www.luogu.com.cn/problem/P16343)中瞎写(偏离题目描述),得到了一个结论:  
[正解](https://www.luogu.com.cn/record/277847650)拿100,[错解](https://www.luogu.com.cn/record/275223356)拿60,[错错解](https://www.luogu.com.cn/record/275223451)拿90。  
好巧,作者刚开始写的是错解,瞎搞把memset注释后样例全对了,交的错错解。立增30分,~~数据水完了~~,作者当时甚至认为正解错了 QwQ  
~~4.作者随后在期中考试中数学忘填答题卡,立减60分~~  
~~所以考前多求求神,拜拜佛~~