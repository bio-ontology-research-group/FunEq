import data.real.basic

theorem imo_2022_a3
  (f : ℝ → ℝ)
  (h₀ : ∀ x, 0 < x → 0 < f x)
  (h₁ : ∀ x, ∃! y, 0 < x → 0 < y → x * f y + y * f x ≤ 2) :
  ∀ x : ℝ, f x = 1/x :=
begin
  sorry
end

theorem imo_2022_a6
  (f : ℝ → ℝ)
  (h₀ : ∀ x y : ℝ, f (x + f (y)) = f (x) + f (y)):
  ∀ q : ℚ, (∃ z : ℝ, f z = q * z) ↔ (∃ n : ℤ, n ≠ 0 ∧ q = (n + 1) / n) :=
begin
  sorry
end

theorem imo_2021_a8
  (f : ℝ → ℝ)
  (h : ∀ a b c : ℝ, (f(a) - f(b)) * (f(b) - f(c)) * (f(c) - f(a)) = 
        f(a * b^2 + b * c^2 + c * a^2) - f(a^2 * b + b^2 * c + c^2 * a)) :
  ∃ (α : ℝ) (β : ℝ), (α = -1 ∨ α = 0 ∨ α = 1) ∧ ((∀ x : ℝ, f x = α * x + β) ∨ (∀ x : ℝ, f x = α * x^3 + β)) :=
begin
  sorry
end

theorem imo_2020_a8
  (f : ℝ → ℝ)
  (h₀ : ∀ x, 0 < x → 0 < f x)
  (h : ∀ x y : ℝ, (0 < x ∧ 0 < y) → f (x + f (x * y)) + y = f (x) * f (y) + 1) :
  ∀ x : ℝ, 0 < x → f x = x + 1 :=
begin
  sorry
end

theorem imo_2019_a1
  (f : ℤ → ℤ)
  (h : ∀ a b : ℤ, f (2 * a) + 2 * f (b) = f (f (a + b))) :
  (∀ n : ℤ, f n = 0) ∨ (∀ n K : ℤ, f n = 2 * n + K) :=
begin
  sorry
end

theorem imo_2018_a1
  (f : ℚ → ℚ)
  (h₀ : ∀ x, 0 < x → 0 < f x)
  (h₁ : ∀ x y, (0 < x ∧ 0 < y) → f (x^2 * f(y)^2) = f(x)^2 * f(y)) :
  ∀ x, 0 < x → f x = 1 :=
begin
  sorry
end


theorem imo_2018_a5
  (f : ℝ → ℝ)
  (h : ∀ x y : ℝ, (x > 0 ∧ y > 0) → (x + 1/x) * f (y) = f (x * y) + f (y / x)) :
  ∃ C1 C2 : ℝ, ∀ x : ℝ, x > 0 → f x = C1 * x + C2 / x :=
begin
  sorry
end

theorem imo_2017_a6
  (f : ℝ → ℝ)
  (h : ∀ x y : ℝ, f (f (x) * f (y)) + f (x + y) = f (x * y)) :
  (∀ x : ℝ, f x = 0) ∨ (∀ x : ℝ, f x = x - 1) ∨ (∀ x : ℝ, f x = 1 - x) :=
begin
  sorry
end

theorem imo_2017_a8
  (f : ℝ → ℝ)
  (h : ∀ x y : ℝ, (f(x) + y) * (f(y) + x) > 0 → f(x) + y = f(y) + x) :
  ∀ x y : ℝ, x > y → f(x) + y ≤ f(y) + x :=
begin
  sorry
end

theorem imo_2016_a4
  (f : ℝ → ℝ)
  (h₀ : ∀ x, 0 < x → 0 < f x)
  (h : ∀ x y, (0 < x ∧ 0 < y) → x * f (x^2) * f (f (y)) + f (f (x) * y) = f (x * y) * (f (f (x^2)) + f (f (y^2)))) :
  ∀ x : ℝ, (0 < x) → f x = 1 / x :=
begin
  sorry
end

theorem imo_2016_a7
  (f : ℝ → ℝ)
  (h₀ : f 0 ≠ 0)
  (h₁ : ∀ x y : ℝ, (f (x^2) + f (y^2) ≤ f (x^2 + y^2)) → f (x + y)^2 = 2 * f (x) * f (y) + f (x^2 + y^2))
  (h₂ : ∀ x y : ℝ, (f (x^2) + f (y^2) > f (x^2 + y^2)) → f (x + y)^2 = 2 * f (x) * f (y) + f (x^2) + f (y^2)) :
  (∀ x : ℝ, f x = -1) ∨ (∀ x : ℝ, f x = x - 1) :=
begin
  sorry
end

theorem imo_2015_a2
  (f : ℤ → ℤ)
  (h : ∀ x y : ℤ, f (x - f (y)) = f (f (x)) - f (y) - 1) :
  (∀ x : ℤ, f x = -1) ∨ (∀ x : ℤ, f x = x + 1) :=
begin
  sorry
end

theorem imo_2015_a4
  (f : ℝ → ℝ)
  (h : ∀ x y : ℝ, f (x + f (x + y)) + f (x * y) = x + f (x + y) + y * f (x)) :
  (∀ x : ℝ, f x = x) ∨ (∀ x : ℝ, f x = 2 - x) :=
begin
  sorry
end

theorem imo_2014_a4
  (f : ℤ → ℤ)
  (h : ∀ m n : ℤ, f (f (m) + n) + f (m) = f (n) + f (3 * m) + 2014) :
  ∀ n : ℤ, f n = 2 * n + 1007 :=
begin
  sorry
end

theorem imo_2014_a6
  (f : ℤ → ℤ)
  (h : ∀ n : ℤ, n^2 + 4 * f (n) = (f (f (n)))^2) :
  (∀ n : ℤ, f n = n + 1) ∨
  (∃ a : ℤ, (a ≥ 1) ∧ (∀ n : ℤ, n > -a → f n = n + 1) ∧ (∀ n : ℤ, n ≤ -a → f n = -n + 1)) ∨
  (∀ n : ℤ, (n > 0 → f n = n + 1) ∧ (n = 0 → f n = 0) ∧ (n < 0 → f n = -n + 1)) :=
begin
  sorry
end

theorem imo_2013_a3
  (f : ℚ → ℝ)
  (h₀ : ∀ x y : ℚ, (0 < x ∧ 0 < y) → f (x) * f (y) ≥ f (x * y))
  (h₁ : ∀ x y : ℚ, (0 < x ∧ 0 < y) → f (x + y) ≥ f (x) + f (y))
  (h₂ : ∃ a : ℚ, a > 1 ∧ f (a) = a) :
  ∀ x : ℚ, (0 < x) → f x = x :=
begin
  sorry
end

theorem imo_2013_a5
  (f : ℕ → ℕ)
  (h : ∀ n : ℕ, f (f (f (n))) = f (n + 1) + 1) :
  (∀ n : ℕ, f n = n + 1) ∨ 
  ((∀ n : ℕ, n % 4 = 0 ∨ n % 4 = 2 → f n = n + 1) ∧
  (∀ n : ℕ, n % 4 = 1 → f n = n + 5) ∧
  (∀ n : ℕ, n % 4 = 3 → f n = n - 3)) :=
begin
  sorry
end

theorem imo_2012_a1
  (f : ℤ → ℤ)
  (h : ∀ a b c : ℤ, a + b + c = 0 → f (a)^2 + f (b)^2 + f (c)^2 = 2 * (f (a) * f (b) + f (b) * f (c) + f (c) * f (a))) :
  (∀ x : ℤ, f x = 0) ∨
  (∀ k : ℤ, k ≠ 0 → ((∀ x : ℤ, f x = k * x^2) ∨ 
             (∀ x : ℤ, (even x → f x = 0) ∧ (odd x → f x = k)) ∨
             (∀ x : ℤ, (x % 4 = 0 → f x = 0) ∧ (x % 4 = 1 → f x = k) ∧ (x % 4 = 2 → f x = 4 * k)))) :=
begin
  sorry
end

theorem imo_2012_a5
  (f : ℝ → ℝ)
  (h₁ : ∀ x y : ℝ, f (1 + x * y) - f (x + y) = f (x) * f (y))
  (h₂ : f (-1) ≠ 0) :
  ∀ x : ℝ, f x = x - 1 :=
begin
  sorry
end

theorem imo_2011_a3
  (f g : ℝ → ℝ)
  (h : ∀ x y : ℝ, g (f (x + y)) = f (x) + (2 * x + y) * g (y)) :
  (∀ x : ℝ, f x = 0 ∧ g x = 0) ∨ (∃ C : ℝ, ∀ x : ℝ, f x = x^2 + C ∧ g x = x) :=
begin
  sorry
end

theorem imo_2011_a6
  (f : ℝ → ℝ)
  (h : ∀ x y : ℝ, f (x + y) ≤ y * f (x) + f (f (x))) :
  ∀ x : ℝ, x ≤ 0 → f x = 0 :=
begin
  sorry
end

theorem imo_2010_a1
  (f : ℝ → ℝ)
  (h : ∀ x y : ℝ, f (⌊x⌋ * y) = f (x) * ⌊f (y)⌋) :
  ∃ C : ℝ, (C = 0 ∨ (1 ≤ C ∧ C < 2)) ∧ ∀ x : ℝ, f x = C :=
begin
  sorry
end

theorem imo_2010_a5
  (f : ℚ → ℚ)
  (h₀ : ∀ x, 0 < x → 0 < f x)
  (h₁ : ∀ x y : ℚ, (0 < x ∧ 0 < y) → f (f (x)^2 * y) = x^3 * f (x * y)) :
  ∀ x : ℚ, (0 < x) → f x = 1 / x :=
begin
  sorry
end

theorem imo_2009_a7
  (f : ℝ → ℝ)
  (h : ∀ x y : ℝ, f (x * (f (x + y))) = f (y * (f (x))) + x^2) :
  (∀ x : ℝ, f x = x) ∨ (∀ x : ℝ, f x = -x) :=
begin
  sorry
end

theorem imo_2008_a1
  (f : ℝ → ℝ)
  (h₀ : ∀ x, 0 < x → 0 < f x)
  (h : ∀ p q r s : ℝ, ((0 < p ∧ 0 < q ∧ 0 < r ∧ 0 < s) ∧ p * q = r * s) → 
      (f (p)^2 + f (q)^2) / (f (r^2) + f (s^2)) = (p^2 + q^2) / (r^2 + s^2)) :
  (∀ x : ℝ, (0 < x) → f x = x) ∨ (∀ x : ℝ, (0 < x) → f x = 1/x) :=
begin
  sorry
end

theorem imo_2007_a4
  (f : ℝ → ℝ)
  (h₀ : ∀ x, 0 < x → 0 < f x)
  (h : ∀ x y : ℝ, (0 < x ∧ 0 < y) → f (x + f (y)) = f (x + y) + f (y)) :
  ∀ x : ℝ, (0 < x) → f x = 2 * x :=
begin
  sorry
end

theorem imo_2005_a2
  (f : ℝ → ℝ)
  (h₀ : ∀ x, 0 < x → 0 < f x)
  (h : ∀ x y : ℝ, (0 < x ∧ 0 < y) → f (x) * f (y) = 2 * f(x + y * f(x))) :
  ∀ x : ℝ, (0 < x) → f x = 2 :=
begin
  sorry
end

theorem imo_2005_a4
  (f : ℝ → ℝ)
  (h : ∀ x y : ℝ, f (x + y) + f (x) * f (y) = f (x * y) + 2 * x * y + 1) :
  (∀ x : ℝ, f x = 2 * x - 1) ∨ (∀ x : ℝ, f x = -x - 1) ∨ (∀ x : ℝ, f x = x^2 - 1) :=
begin
  sorry
end

theorem imo_2004_a6
  (f : ℝ → ℝ)
  (X : set ℝ)
  (h₀ : ∀ x : ℝ, x ∈ X → x < -2 / 3)
  (h₁ : ∀ x y : ℝ, f (x^2 + y^2 + 2 * f (x * y)) = (f (x + y))^2) :
  (∀ x : ℝ, f x = x) ∨ (∀ x : ℝ, f x = 0) ∨ (∀ x : ℝ, (x ∉ X → f x = 1) ∧ (x ∈ X → f x = -1)) :=
begin
  sorry
end

theorem imo_2003_a2
  (f : ℝ → ℝ)
  (h₀ : f 0 = 0 ∧ f 1 = 1)
  (h₁ : ∀ x y, x ≤ y → f x ≤ f y)
  (h₂ : ∀ a b : ℝ, a < b → f a + f b = f (a * f b) + f (a + b - a * b)) :
  (∀ x : ℝ, (x ≥ 1 → f x = 1) ∧ (x = 0 → f x = 0)) ∨
  (∃ c k : ℝ, c > 0 ∧ k ≥ 0 ∧ (∀ x : ℝ, (x > 1 → f x = c * (x - 1)^k + 1) ∧ 
                                            (x = 1 → f x = 1) ∧
                                            (x < 1 → f x = -(1 - x)^k + 1))) :=
begin
  sorry
end

theorem imo_2003_a5
  (f : ℝ → ℝ)
  (t : ℝ)
  (ht : t > 0)
  (h₀ : ∀ x y z, (0 < x ∧ 0 < y ∧ 0 < z) → f (x * y * z) + f (x) + f (y) + f (z) = f (sqrt(x * y)) * f (real.sqrt(y * z)) * f (real.sqrt(x * z)))
  (h₁ :∀ x y, 1 ≤ x ∧ x ≤ y → f (x) < f (y)) :
  ∀ x : ℝ, (0 < x) → f x = x^t + x^(-t) :=
begin
  sorry
end

theorem imo_2002_a1
  (f : ℝ → ℝ)
  (h : ∀ x y : ℝ, f (f (x) + y) = 2 * x + f (f (y) - x)) :
  ∀ c : ℝ, ∀ x : ℝ, f x = x + c :=
begin
  sorry
end

theorem imo_2002_a4
  (f : ℝ → ℝ)
  (h : ∀ x y z t : ℝ, (f (x) + f (z)) * (f (y) + f (t)) = f (x * y - z * t) + f (x * t + y * z)) :
  (∀ x : ℝ, f x = 0) ∨ (∀ x : ℝ, f x = 1/2) ∨ (∀ x : ℝ, f x = x^2) :=
begin
  sorry
end
