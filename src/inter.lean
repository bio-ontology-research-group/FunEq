import data.real.basic

theorem intermediate_funeq_1
  (f : ℝ → ℝ)
  (h : ∀ x y, f((x - y)^2) = f(x)^2 - 2 * x * f(y) + y^2):
  ∀ x, (f(x) - x)^2 = f(0) :=
begin
  sorry
end

theorem intermediate_funeq_2
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f(x + 1) = f(x) + 1)
  (h₁ : ∀ x, x ≠ 0 → f(1/x) = f(x)/x^2) :
  ∀ x, x ≠ 0 → f(1 + 1/x) = 1 + f(x)/x^2 :=
begin
  sorry
end

theorem intermediate_funeq_3
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f(x + y) = f(x) + f(y))
  (h₁ : ∀ x, x ≠ 0 → f(1/x) = f(x)/x^2) :
  ∀ x, (x ≠ 0 ∧ x ≠ 1) → f(x^2 - x) = x^2 * f(x - 1) - (x - 1)^2 * f(x) :=
begin
  sorry
end

theorem intermediate_funeq_4
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f(x + y) = f(x) + f(y))
  (h₁ : ∀ x y, f(x * y) = f(x) * f(y)) :
  ∀ r : ℚ, ∀ x : ℝ, f(r * x) = r * f(x) :=
begin
  sorry
end

theorem intermediate_funeq_5
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f(x + y) = f(x) + f(y))
  (h₁ : ∀ x, f(x^2) = f(x)^2) :
  ∀ x y: ℝ, x > y → f(x) ≥ f(y) :=
begin
  sorry
end

theorem intermediate_funeq_6
  (f : ℝ → ℝ)
  (h : ∀ x y, f(f(x - y)) = f(x) - f(y) + f(x) * f(y) - x * y) :
  ∀ x : ℝ, f(x)^2 = x^2 :=
begin
  sorry
end

theorem intermediate_funeq_7
  (f : ℝ → ℝ)
  (h₀ : f(0) = 0)
  (h₁ : ∀ x y, (x ≠ 0 ∧ y ≠ 0) → f((x^2 + y^2)/(2 * x * y)) = (f(x)^2 + f(y)^2) / (2 * f(x) * f(y))) :
  ∀ x z : ℝ, f(z) * f(x * z)^2 - f(x) * (1 + f(z)^2) * f(x * z) + f(z) * f(x)^2 = 0 :=
begin
  sorry
end

theorem intermediate_funeq_8
  (f : ℝ → ℝ)
  (h₀ : ∀ x, x ≥ 1 → f(x) ≥ 1)
  (h₁ : ∀ x, x ≥ 1 → f(x) ≤ 2 + 2 * x)
  (h₂ : ∀ x, x ≥ 1 → x * f(x + 1) = f(x)^2 - 1):
  ∀ x : ℝ, ∀ k : ℕ, f(x) < 2^((1/2^k)) * (1 + x) :=
begin
  sorry
end

theorem intermediate_funeq_9
  (f : ℝ → ℝ)
  (h : ∀ x y, f(x^2 + y) = f(x^27 + 2 * y) + f(x^4)) :
  ∀ x, f(x) = 0 :=
begin
  sorry
end

theorem intermediate_funeq_10
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f(y * f(x) + x * y) = 2 * x * y)
  (h₁ : ∀ x, f(f(x)) = x) :
  ∀ x, f(x) = x :=
begin
  sorry
end

theorem intermediate_funeq_11
  (f : ℝ → ℝ)
  (h : ∀ x y, f(x * f(y)^2 - f(f(x))) = y^2 * f(x) - x) :
  f(0) = 0 :=
begin
  sorry
end

theorem intermediate_funeq_12
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f(x * f(y)^2 - f(f(x))) = y^2 * f(x) - x)
  (h₁ : f(0) = 0) :
  ∀ x y, f(x) = f(y) → x = y:=
begin
  sorry
end

theorem intermediate_funeq_13
  (f : ℝ → ℝ)
  (h : ∀ x y, f(x * f(y)^2 - f(f(x))) = y^2 * f(x) - x):
  ∀ x : ℝ, ∃ a : ℝ, f(a) = x :=
begin
  sorry
end

theorem intermediate_funeq_14
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f(y^2 * f(x)) = x * y * f(y))
  (h₁ : f(1) ≠ 0) :
  ∀ x y, f(x) = f(y) → x = y:=
begin
  sorry
end

theorem intermediate_funeq_15
  (f : ℝ → ℝ)
  (h₀ : ∀ x y, f(y^2 * f(x)) = x * y * f(y))
  (h₁ : f(1) ≠ 0)
  (h₂ : ∀ x y, f(x) = f(y) → x = y):
  ∀ x, f(x) = x :=
begin
  sorry
end






