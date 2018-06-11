open nat int

--check prime number
def isPrime (n : ℕ) : Prop := 
    (n ≥ 2) ∧ (∀ m : ℕ , m ≥ 1 ∧ m ∣ n → (m = 1 ∨ m = n))

--GoldBach Conjecture
theorem goldBach (n : ℕ) : n > 2 → 
    ∃ p q : ℕ , isPrime p ∧ isPrime q ∧ (n = p + q) :=
begin
admit,
end 

-- Opperman Conjecture
def isOpperman (n : ℕ) : Prop :=
    (∃ m : ℕ,  m > n * n ∧ m < ( n + 1) * ( n + 1))

def infiniteSet (s: set ℕ) : Prop := 
    ∀ n : ℕ, ∃ m ∈ s, n < m   

def setOfPrime := 
    {m: ℕ | isPrime m ∧ (∃ n : ℕ, n>0 ∧  m = n * n +1 )}

-- n*n + 1 Conjecture
theorem theorem4: infiniteSet setOfPrime :=
begin
    admit,
end

