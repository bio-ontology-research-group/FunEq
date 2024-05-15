import data.real.basic
import algebra.group.basic


theorem simple_funeq_3 
(f : ℝ → ℝ) 
(h₀ : f(0) = 0) 
(h₁ : ∀ x : ℝ, f(x + 1) = f(x) + 2) :
f(1) = 2 :=
begin
  have step1 : f(0 + 1) = f(0) + 2 := h₁ 0,
  simp at step1,
  rw h₀ at step1,
  nlinarith,
end

theorem simple_funeq_5
(f : ℝ → ℝ)
(h : ∀ x y : ℝ, f(x + y) = f(x) + f(y)) :
f(0) = 0 :=
begin
    have step2 : f 0 + f 0 = f 0 := by rw [←h 0 0, add_zero],
    simp at step2,
    nlinarith,
end

theorem simple_funeq_6 
(f : ℝ → ℝ) 
(h : ∀ x y : ℝ, f(x * y) = f(x) * f(y)) :
f(1) = 0 ∨ f(1) = 1 :=
begin
  have step1: f(1 * 1) = f(1) * f(1) := h 1 1,
  simp at step1,
  let a := f(1),
  have step2: a = a * a := step1,
  have step3: a *(1 - a) = 0 := by linarith,
    cases eq_zero_or_eq_zero_of_mul_eq_zero step3 with a_zero a_sub_one_zero,
  -- left,
  -- exact a_zero,
  -- right,
  -- linarith [a_sub_one_zero],
  { left,  -- This case handles a = 0
  exact a_zero },
  { right, -- This case handles 1 - a = 0, which implies a = 1
    linarith [a_sub_one_zero] }
end

theorem simple_funeq_12
(f : ℝ → ℝ)
(h : ∀ x : ℝ, f(x) = x^3 - x) :
∀ x : ℝ, f(-x) = -f(x) :=
begin
    intro x,
    rw [h, h],
    nlinarith,
end

theorem simple_funeq_13
(f : ℝ → ℝ)
(h : ∀ x : ℝ, f(x) = 7 - x) :
∀ x : ℝ, f(f(x)) = x :=
begin
    -- have step10 := λ x : ℝ, show f (f x) = x, from by rw [h, h, sub_sub_cancel],
    -- exact step10,
    intro x,
    -- rw [h, h, sub_sub_cancel],
    rw h,
    rw h, 
    rw sub_sub_cancel,



end

theorem simple_funeq_14
(f : ℝ → ℝ) 
(h : ∀ (x : ℝ), f x = x ^ 2 - 2 * x + 1) :
∀ (x : ℝ), f x = (x - 1) ^ 2 :=
begin
  have step1 : ∀ (x : ℝ), (x - 1) ^ 2 = x ^ 2 - 2 * x + 1,
  { intro x,
  calc (x - 1) ^ 2 = x ^ 2 - 2 * x * 1 + 1 ^ 2 : by ring,
  },
  rw step1,
  exact h,
end
theorem simple_funeq_16 
(f : ℝ → ℝ) 
(h : ∀ (x y : ℝ), f (x * y) = f x * f y) :
f 1 = 0 ∨ f 1 = 1 :=
begin
  cases (em (f 1 = 0)) with h0 h0',
  { left, assumption },
  { right, have h1 : f (1* 1) = f 1 * f 1, by rw h 1 1,
    simp at h1,
    have h1_ne_zero : f 1 ≠ 0, by contradiction,
    symmetry, exact eq_of_mul_eq_mul_left h1_ne_zero h1_eq_one }
end

theorem simple_funeq_19
(f : ℝ → ℝ) 
(h : ∀ (x : ℝ), f x = x * (x + 1)) :
∀ (x : ℝ), f x = x ^ 2 + x :=
begin
  have step1 := λ x, eq.trans (h x) (mul_add x x 1),
  simp at step1,
  intro x,
  rw step1,
  linarith,
end

theorem simple_funeq_21
(f : ℝ → ℝ)
(h : ∀ x y : ℝ, f((x - y)^2) = f(x)^2 - 2 * x * f(y) + y^2) :
f(0) = 0 ∨ f(0) = 1 :=
begin
  specialize h 0 0,
  simp at h,
  have h : f(0) * (f(0) - 1) = 0,
  linarith,
  -- Applying the zero product property
  cases eq_zero_or_eq_zero_of_mul_eq_zero h with h0 h1,
  { left, assumption },
  { right, 
    linarith [h1] },

  
end


theorem solve_x_squared_equals_x : ∀ (x : ℝ), x^2 = x → x = 0 ∨ x = 1 :=
begin
  intros x hx,
  -- Factoring x^2 - x = 0 to x(x - 1) = 0
  have h : x * (x - 1) = 0,
  linarith,
  -- Applying the zero product property
  cases eq_zero_or_eq_zero_of_mul_eq_zero h with h0 h1,
  { left, assumption },
  { right, 
    linarith [h1] },
end

theorem simple_funeq_23
(f : ℝ → ℝ)
(h : ∀ x : ℝ, f(x) = -f(-x)) :
f(0) = 0 :=
begin
  -- have step1 : f(0) = -f(-0) := h 0,
  -- simp at step1,
  -- linarith,
  -- have step2 : 2 * f 0 = 0 := by linarith [step1],
  -- have step3 : f 0 = 0 := by linarith [step2],
  -- exact step3,
  have step1 : f 0 = -f (-0) := h 0,
  simp at step1,

  have step3 : f 0 = 0 := neg_eq_zero.mpr step2,
  exact step3,
end

theorem simple_funeq_24
(f : ℕ → ℕ)
(h₀ : f 0 = 0)
(h₁ : ∀ (x : ℕ), f (x + 1) = f x + 1) :
∀ (n : ℕ), f n = n :=
begin
  intro n,
  induction n with n ih,
  linarith,

end

theorem simple_funeq_25
(f : ℝ → ℝ)
(h : ∀ x y : ℝ, f(x + y) = f(x) + f(y)) :
∀ x : ℝ, f(x) = -f(-x) :=
begin
  have step1 : f(0 + 0) = f(0) + f(0) := h 0 0,
  simp at step1,
  intro x,
  have step2: f(x + -x) = f(x) + f(-x) := h x (-x),
  rw add_neg_self at step2,
  rw step1 at step2,
  linarith,
end


theorem simple_funeq_26
(f : ℝ → ℝ)
(h : ∀ x y : ℝ, f(x + y) = f(x) + f(y)) :
∀ x : ℝ, f(x) = -f(-x) :=
begin
  intro x,
  have step1 : f(x + 1) = f(x) + f(1) := h x 1,
  simp at step1,
end

-- theorem simple_funeq_11 
-- (f : ℝ → ℝ) 
-- (h : ∀ x : ℝ, f(x) = real.rpow 2 x) :
-- f(3) = 8 :=
-- begin
--   rw h,
--   -- Now rewrite 2^3 as real.rpow 2 3 to calculate it directly
--   norm_num,
-- end

theorem simple_funeq_15 
(f : ℝ → ℝ) 
(h₀ : f(-1) = -1) 
(h₁ : ∀ x : ℝ, f(x) + 2 * f(-x) = 3 * x) :
f(1) = 5 :=
begin
  have step1 : f 1 + 2 * f (-1) = 3 * 1 := h₁ 1,
  rw h₀ at step1,
  simp at step1,
  linarith,
end

theorem simple_funeq_17 
(f : ℝ → ℝ) 
(h : ∀ x : ℝ, f(x) = x^3 - x) :
∀ x : ℝ, f(-x) = -f(x) :=
begin
  sorry
end
