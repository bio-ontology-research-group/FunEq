import data.real.basic

theorem simple_funeq_25
(f : ℝ → ℝ)
(h : ∀ x y : ℝ, f(x + y) = f(x) + f(y)) :
∀ x : ℝ, f(x) = -f(-x) :=
begin
  have h0 := h 0 0,
  simp at h0,
  have h1: ∀ z w : ℝ, f((z+w) + (z-w)) = f(z+w) + f(z-w) := by intros z w; rw h (z+w) (z-w),
  simp at h1,
  intro x,
  have step2:= h1 x,
  linarith,

  -- intro z,
  -- have h1 := h z (-z),
  -- simp at h1,
  -- rw h0 at h1,
  -- linarith,
end

theorem injective
(f : ℝ → ℝ)
(h : ∀ x y : ℝ, f(x + 2 * x * f(y)^2) = y * f(x) + f(f(y) + 1))
(h₁ : ∃ z : ℝ, f z ≠ 0) :
∀ x y : ℝ, f(x) = 0 :=
begin
  have inj: ∀ x y : ℝ, f(x) = f(y) → x = y,
  intros y1 y2 hfy,
  cases h₁ with z hz,
  have step1 := h z y1,
  have step2 := h z y2,
  rw hfy at step1,
  rw step2 at step1,
  simp at step1,
  cases step1,
  linarith,
  contradiction,
end

theorem injective2
(f : ℝ → ℝ)
(h : ∀ x : ℝ, f(x)=x+3):
∀ x y : ℝ, f x = f y → x = y :=
begin
  intros x1 x2 h1,
  dsimp [h] at h1,
  
end


theorem surjective
(f : ℝ → ℝ)
(h : ∀ x y : ℝ, f(f(y) + x * f(x)) = y + f(x)^2):
∀ x : ℝ, f(x) = x :=
begin
  have sur: ∀ x : ℝ, ∃ a : ℝ, f(a) = x,
  intro x,
  have step1 := h 0 (x - f(0)^2),
  simp at step1,
  let a := f(x - f(0)^2),
  rw ←step1,
  use a,
end

theorem involution
(f : ℝ → ℝ)
(h : ∀ x : ℝ, f(f(x)) = x + 2):
∀ x : ℝ, f(x) = x :=
begin
  intro x,
  have step1 := h (f(x)),
  rw h x at step1,
end

theorem symmetry
(f : ℝ → ℝ)
(h : ∀ x y : ℝ, f(x + f(y)) + f(x * y) = f(x + 1) * f(y + 1) - 1):
∀ x : ℝ, f(x) = x :=
begin
  have sym_hypo : ∀ x y, f(x + f(y)) = f(y + f(x)),
  intros x y,
  have h0 := h x y,
  have h1 := h y x,
  have h2 : f(x + f(y)) + f(x * y) - (f(y + f(x)) + f(y * x)) = (f(x + 1) * f(y + 1) - 1) - (f(y + 1) * f(x + 1) - 1) := by rw [h0, h1],
  have cancel_xy : x * y = y * x :=  by apply mul_comm,
  rw cancel_xy at h2,
  have cancel_f : f (x + 1) * f (y + 1) = f (y + 1) * f (x + 1) :=  by apply mul_comm,
  rw cancel_f at h2,
  linarith,
end

theorem induction
(f : ℝ → ℝ)
(h : ∀ x : ℝ, f(x + 1) = f(x) + 1)
(h₁ : f(0) = 0) :
∀ x : ℝ, f(x) = x :=
begin
  have h0 : ∀ (n : ℕ), f n = n,
  intro n,
  induction n with n ih,
  norm_cast,
  linarith,
  have h2 := h ↑n,
  rw ih at h2,
  norm_cast at h2,
  rw h2,
end

theorem trap
(f : ℝ → ℝ)
(h : ∀ x y : ℝ, f(f(x)^2 + f(y)) = x * f(x) + y)
(h₁ : ∀ x: ℝ, f(x)^3 = f(x)) :
(∀ x : ℝ, f(x) = -x) :=
begin
  intro x, 
  have hx:= h₁ x,
  have h2: f(x) * (f(x) - 1) * (f(x) +1) = 0 := by linarith,

  

end

theorem square_sum_geq_prod (x : ℝ) : x^2 + (x + 1)^2 ≥ x * (x + 1)*2 :=
begin
  calc
    x^2 + (x + 1)^2 = x^2 + (x^2 + 2*x + 1) : by ring
    ...             = 2*x^2 + 2*x + 1       : by ring
    ...             ≥ 2*x^2 + 2*x           : by linarith
    ...             = x*(2*x + 2)           : by ring
    ...             = x*(x + 1)*2           : by ring_nf,
end

theorem symmetry
(f : ℝ → ℝ)
(h : ∀ x y : ℝ, f(x + f(y)) + f(x * y) = f(x + 1) * f(y + 1) - 1):
∀ x : ℝ, f(x) = x :=
begin
  intro x,
  intro y, -- Introduce y as well
  -- Substitute x by y and y by x in h to get step1
  have step1 : f(y + f(x)) + f(y * x) = f(y + 1) * f(x + 1) - 1,
    by rw h y x,
  -- Now we need to prove symmetry, i.e., f(x + f(y)) = f(y + f(x))
  -- Use original h and step1 to show this equality
  specialize h x y,
  rw step1 at h,
  -- At this point, we have:
  -- f(x + f(y)) + f(x * y) = f(y + f(x)) + f(x * y)
  -- We can simplify this to show the symmetry:
  have sym : f(x + f(y)) = f(y + f(x)),
  {
    apply_fun (λ z, z - f(x * y)) at h,
    exact h,
  },
  -- To prove f(x) = x, we need more steps that would typically involve showing f is injective or surjective
  -- or some fixed point argument. For now, we establish symmetry:
  sorry -- this does not complete the proof that f(x) = x, as more steps are needed
end
