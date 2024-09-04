# Poisson Point Process - Пуасоновский Поток


У нас имеется временная размерность t, в этой размерности возникают события нулевой длительности. Поскольку такие события графически выглядят как точки на прямой t. То отсюда и возникает слово Point в названии Poisson Point Process.

Далее введем понятие Пуасоновского потока.

Определим три случайные величины: 
 - $X_t$ - число событий за интервал от нуля до t: [0, t).
 - $X_{\Delta t}$ - число событий за интервал $\Delta t$. 
 - $Y_n$ - Время проденной от n-го события до (n+1)-го.

Теперь на потребуется ввести 4 аксиомы PA (Poisson Axiomes):
<br/><br/>  

## Poisson Axiomes - Пуасоновские аксиомы
#### PA-0. Начальные условия
Вероятность события в начальный момент времени равна нулю: $P(0 < X_0)=0$ и $P(X_0=0)=1$.
<br/>
<br/>
#### PA-1. Отсутствие последействия
Пусть имеются два временных интервала $\Delta s$ и $\Delta t$. 
Тогда случайные величины $X_{\Delta s}$ и $X_{\Delta t}$ независимы, 
если интервалы $\Delta s$ и $\Delta t$ не пересекаются.
<br/>
<br/>
#### PA-2. Стационарность
Возможны два типа стационароности для случайных процессов:
 - сильная - когда распределение случайной велечини не меняется со временем
 - слабая - когда со временем не меняются нужные для задачи характеристики. Например, такими характеристиками могут быть матожидание и дисперсия.
Пуассоновский поток должен быть сатционарным, тип стационарности зависит от конкретной задачи.
<br/>
<br/>
#### PA-3. Ординарность
Существует такой период времени $\Delta t$ что:
- $P(1<X_{\Delta t})=o(\Delta t)$
- $P(X_{\Delta t}=1)=\lambda \Delta t + o(\Delta t)$
<br/>
<br/>
## Вероятность попуска
Из аксиомы PA-3 можно вывести вероятность что за элементарный период времени не возникнет события:
$$P(X_{\Delta t}=0)=1-P(X_{\Delta t}=1)-P(1<X_{\Delta t})
=1-(\lambda t + o(\Delta t))-o(\Delta t)=1-\lambda t-2 o(\Delta t)$$

Согласно арифметике о-малых $o(\Delta t)=-2 o(\Delta t)$. Поэтому в результате получим следующее равенство: 
$$P(X_{\Delta t}=0)=1-\lambda t+o(\Delta t)$$

## Выводим вероятность Пуасона
Введем вспомогательную величину $h_k(t)=P(X_t=k)$. И далее рассмотрим отделные случаи этой величины.

### Для случая $h_0(t)$
Рассмотрим производную $\frac{h_0(t+\Delta t)-h_0(t)}{\Delta t}$, величину $h_0(t+\Delta t)$ можно факторизовать по PA-1: $h_0(t+\Delta t)=h_0(t)h_0(\Delta t)$. Теперь сформулируем дифференциальное уравнение и решим его:
$$\frac{h_0(t+\Delta t)-h_0(t)}{\Delta t}=\frac{h_0(t)h_0(\Delta t)-h_0(t)}{\Delta t}=\frac{h_0(t)(h_0(\Delta t)-1)}{\Delta t}$$

Величина $h_0(\Delta t)$ это та самая вероятность пропуска, 
которая выведена из PA-3: $h_0(\Delta t)=P(X_{\Delta t}=0)=1-\lambda t+o(\Delta t)$ 

Воспольземся этим фактом:
$$\frac{h_0(t+\Delta t)-h_0(t)}{\Delta t}=\frac{h_0(t)(h_0(\Delta t)-1)}{\Delta t}=\frac{h_0(t)(1-\lambda \Delta t+o(\Delta t)-1)}{\Delta t}$$
Чтобы получить производную, возьмем предел:
$$ \underset{\Delta t \rightarrow 0}{\lim}\big( \frac{h_0(t+\Delta t)-h_0(t)}{\Delta t} \big)=\underset{\Delta t \rightarrow 0}{\lim}\big( \frac{h_0(t)(1-\lambda \Delta t+o(\Delta t)-1)}{\Delta t} \big)$$
$$ h_0(t)'=\underset{\Delta t \rightarrow 0}{\lim}\big( \frac{h_0(t)(1-\lambda \Delta t+o(\Delta t)-1)}{\Delta t} \big)$$
$$ h_0(t)'=h_0(t)\underset{\Delta t \rightarrow 0}{\lim}\big( \frac{1-\lambda \Delta t+o(\Delta t)-1}{\Delta t} \big)$$
$$ h_0(t)'=h_0(t)\underset{\Delta t \rightarrow 0}{\lim}\big( \frac{-\lambda \Delta t+o(\Delta t)}{\Delta t} \big)$$
$$ h_0(t)'=h_0(t)\underset{\Delta t \rightarrow 0}{\lim}\big( \frac{-(\lambda \Delta t-o(\Delta t))}{\Delta t} \big)$$
По арифметике о-малых меняем знак $o(\Delta t)=-o(\Delta t)$: 
$$ h_0(t)'=h_0(t)\underset{\Delta t \rightarrow 0}{\lim}\big( \frac{-(\lambda \Delta t+o(\Delta t))}{\Delta t} \big)$$
$$ h_0(t)'=-h_0(t)\underset{\Delta t \rightarrow 0}{\lim}\big( \frac{\lambda \Delta t+o(\Delta t)}{\Delta t} \big)$$
$$ h_0(t)'=-h_0(t)\big(\underset{\Delta t \rightarrow 0}{\lim} \frac{\lambda \Delta t}{\Delta t}+\underset{\Delta t \rightarrow 0}{\lim}\frac{o(\Delta t)}{\Delta t} \big)$$
$$ h_0(t)'=-h_0(t)\big(\underset{\Delta t \rightarrow 0}{\lim} \frac{\lambda \Delta t}{\Delta t}+0 \big)$$
$$ h_0(t)'=-h_0(t)\big(\lambda +0 \big)$$
$$ h_0(t)'=-h_0(t)\lambda$$
Найдем решение для дифференциалного уравненя:
$$ h_0(t)'=-h_0(t)\lambda$$
$$ \frac{d h_0(t)}{dt}=-h_0(t)\lambda$$
$$ \frac{d h_0(t)}{h_0(t)}=-\lambda t$$
$$ \ln h_0(t) - \ln C_0=-\lambda t$$
$$ \ln h_0(t)=-\lambda t + \ln C_0$$
$$ exp(\ln h_0(t))=exp \big( -\lambda t + \ln C_0 \big)$$
$$ h_0(t)=exp(-\lambda t) \cdot exp(\ln C_0 )$$
$$ h_0(t)=C_0exp(-\lambda t)$$
$$ h_0(t)=C_0e^{-\lambda t}$$

Чтобы найти $С_0$ применим PA-0:
$$ h_0(0)=1=C_0 e^{-\lambda \cdot 0}=C_0 \cdot 1$$
$$ C_0=1 $$

Тогда решение пример следующий вид:
$$ h_0(t)=e^{-\lambda t}$$

### Для случая $h_1(t)$
Рассмотрим производную $\frac{h_1(t+\Delta t)-h_1(t)}{\Delta t}$, величину $h_1(t+\Delta t)$ можно факторизовать по PA-1: $h_1(t+\Delta t)=h_1(t)h_1(\Delta t)$. 
Существует лишь два варианта возникновения одного события на отрезке $[0, t+\Delta t)$:
- событие произошло на отрезке $[0,t)$ и не произошло на отрезке $[t,t+\Delta t)$
- событие не произошло на отрезке $[0,t)$ и произошло на отрезке $[t,t+\Delta t)$

Это можно сформулировать следующим образом:
$$h_1(t+\Delta t)=h_1(t)h_0(\Delta t)+h_0(t)h_1(\Delta t)$$

Чтобы получить $\frac{h_1(t+\Delta t)-h_1(t)}{\Delta t}$, вычтем из равенства $h_1(t)$
и затем поделим на $\Delta t$:
$$\frac{h_1(t+\Delta t)-h_0(t)}{\Delta t}=\frac{h_1(t)h_0(\Delta t)+h_0(t)h_1(\Delta t)-h_1(t)}{\Delta t}$$
$$\frac{h_1(t+\Delta t)-h_0(t)}{\Delta t}=\frac{h_1(t)(h_0(\Delta t)-1)+h_0(t)h_1(\Delta t)}{\Delta t}$$

Величина $h_1(\Delta t)$ нам звестна из PA-3: $h_1(\Delta t)=P(X_{\Delta t}=1)=\lambda \Delta t+o(\Delta t)$. А величина $h_0(\Delta t)$ это та самая вероятность пропуска, 
которая выведена из PA-3: $h_0(\Delta t)=P(X_{\Delta t}=0)=1-\lambda \Delta t+o(\Delta t)$.

Подставим их в равенство:
$$\frac{h_1(t+\Delta t)-h_0(t)}{\Delta t}=\frac{h_1(t)(1-\lambda \Delta t+o(\Delta t)-1)+h_0(t)(\lambda \Delta t+o(\Delta t))}{\Delta t}$$

Найдем предел, чтобы получить производную:
$$h_1(t)'=\underset{\Delta t \rightarrow 0}{\lim} \big( \frac{h_1(t)(-\lambda \Delta t+o(\Delta t))}{\Delta t} \big) + \underset{\Delta t \rightarrow 0}{\lim} \big( \frac{h_0(t)(\lambda \Delta t+o(\Delta t))}{\Delta t} \big)$$

$$h_1(t)'=-h_1(t)\lambda \Delta t + \underset{\Delta t \rightarrow 0}{\lim} \big( \frac{h_0(t)(\lambda \Delta t+o(\Delta t))}{\Delta t} \big)$$

$$h_1(t)'=-h_1(t)\lambda + h_0(t)\lambda $$

Нам уже известно что $ h_0(t)=e^{-\lambda t}$. Применим это:
$$h_1(t)'=-h_1(t)\lambda + e^{-\lambda t} \lambda $$

Домножим левую и правую часть на $e^{\lambda t}$:
$$h_1(t)'\ e^{\lambda t}=-h_1(t)\lambda e^{\lambda t} + \lambda $$

$$h_1(t)'\ e^{\lambda t}+h_1(t)\lambda e^{\lambda t} = \lambda $$

Левая часть равенства это формула производной от произведения. Воспользуемся этим чтобы упростить левую часть:
$$(h_1(t)\ e^{\lambda t})' = \lambda$$
Проинтегрируем левую и правую часть:
$$h_1(t)\ e^{\lambda t} = \lambda t + С_1$$

Получим частное решение:
$$h_1(t) = (\lambda t + С_1)e^{-\lambda t}$$

Воспозуемся PA-0, чтобы узнать значение $C_1$:
$$h_1(0)= P(X_0=1)=P(0 < X_0)=0 = (\lambda \cdot 0 + С_1)e^{-\lambda \cdot 0}$$
$$С_1=0$$

Получим общее решение:
$$h_1(t) = \lambda t e^{-\lambda t}$$


### Для случая $h_2(t)$
Рассмотрим производную $\frac{h_1(t+\Delta t)-h_1(t)}{\Delta t}$, величину $h_1(t+\Delta t)$ можно факторизовать по PA-1: $h_1(t+\Delta t)=h_1(t)h_1(\Delta t)$. 
Существует лишь два варианта возникновения одного события на отрезке $[0, t+\Delta t)$:
1. 2 события произошло на отрезке $[0,t)$ и 0 событий на отрезке $[t,t+\Delta t)$
2. 1 событие произошло на отрезке $[0,t)$ и 1 событие произошло на отрезке $[t,t+\Delta t)$
3. 0 событий произошло на отрезке $[0,t)$ и 2 события произошло на отрезке $[t,t+\Delta t)$

Рассмотрим вероятность 3-го варианта.

Это можно сформулировать следующим образом:
$$h_1(t+\Delta t)=h_1(t)h_0(\Delta t)+h_0(t)h_1(\Delta t)$$



### Для случая $h_3(t)$