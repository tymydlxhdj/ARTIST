/*******************************************************************************
 * Copyright (c) 2014 Vienna University of Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 * Martin Fleck (Vienna University of Technology) - initial API and implementation
 *
 * Initially developed in the context of ARTIST EU project www.artist-project.eu
 *******************************************************************************/
package eu.artist.postmigration.nfrvt.lang.gml.validation;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.eclipse.emf.ecore.EStructuralFeature;

import eu.artist.postmigration.nfrvt.lang.common.artistCommon.AbsoluteFunction;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.AdditionOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.AdditiveExpression;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.AndOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.ArithmeticExpression;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.AverageFunction;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.AvgOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.BooleanLiteral;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.BooleanUnit;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.CommonLogarithmFunction;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.ComparableExpression;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.Comparison;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.Conjunction;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.Disjunction;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.DivisionOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.EqualsOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.ExponentialFunction;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.Expression;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.GreaterOrEqualThanOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.GreaterThanOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.Implication;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.ImplicationOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.InstanceSpecificationExpression;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.LessOrEqualThanOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.LessThanOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.LiteralValueExpression;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.MaxOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.MaximumFunction;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.MinOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.MinimumFunction;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.ModulusOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.MultiplicationOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.MultiplicativeExpression;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.NaturalLogarithmFunction;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.Negation;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.NotEqualsOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.NullLiteral;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.NumberExpression;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.NumberFunction;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.NumberLiteral;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.OrOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.ParenthesizedExpression;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.RelationalExpression;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.StringLiteral;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.SubstractionOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.SumFunction;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.SumOperator;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.UnlimitedLiteral;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.ValueSpecification;
import eu.artist.postmigration.nfrvt.lang.common.artistCommon.XOrOperator;
import eu.artist.postmigration.nfrvt.lang.common.eval.logic.BooleanLogic;
import eu.artist.postmigration.nfrvt.lang.common.eval.logic.NumericLogic;
import eu.artist.postmigration.nfrvt.lang.common.eval.logic.RelationalLogic;
import eu.artist.postmigration.nfrvt.lang.common.eval.util.ValueUtil;

public class ExpressionValidator {
	
	protected GMLLabelRenderer renderer = new GMLLabelRenderer();
	protected Map<String, EStructuralFeature> infos = new HashMap<>();
	protected Map<String, EStructuralFeature> warnings = new HashMap<>();
	protected Map<String, EStructuralFeature> errors = new HashMap<>();
	
	public void addWarning(String warning, EStructuralFeature feature) {
		warnings.put(warning, feature);
	}
	
	public Map<String, EStructuralFeature> getWarnings() {
		return warnings;
	}
	
	public void addError(String error, EStructuralFeature feature) {
		errors.put(error, feature);
	}
	
	public Map<String, EStructuralFeature> getErrors() {
		return errors;
	}
	
	public void addInfo(String info, EStructuralFeature feature) {
		infos.put(info, feature);
	}
	
	public Map<String, EStructuralFeature> getInfos() {
		return infos;
	}
	
	public void reset() {
		infos = new HashMap<>();
		warnings = new HashMap<>();
		errors = new HashMap<>();
	}
	
	public ValueSpecification evaluate(Expression e) {
		if(e instanceof Implication)
			return evaluate((Implication)e);

		return null;
	}
	
	public ValueSpecification evaluate(Implication e) {
		if(e instanceof Disjunction)
			return evaluate((Disjunction)e);
		
		return evaluateBinaryBoolean(e);
	}
	
	public ValueSpecification evaluate(Disjunction e) {
		if(e instanceof Conjunction)
			return evaluate((Conjunction)e);
		
		return evaluateBinaryBoolean(e);
	}
	
	public ValueSpecification evaluate(Conjunction e) {
		if(e instanceof Comparison)
			return evaluate((Comparison)e);
		
		return evaluateBinaryBoolean(e);
	}
	
	public ValueSpecification evaluate(Comparison e) {
		if(e instanceof BooleanUnit)
			return evaluate((BooleanUnit)e);
		
		return evaluateBinaryRelational(e);
	}
	
	private EStructuralFeature feature;
	
	
	public BooleanLiteral evaluateBinaryBoolean(Implication parent) {
		
		Boolean left = null;
		Boolean right = null;
		boolean error = false;
		try {
			left = ValueUtil.assertBooleanOrNull(evaluate(parent.getLeft()));
		} catch(Exception e) {
			addError(renderer.render(parent.getLeft()) + " is not a boolean value.", getFeature());
			error = true;
		}
		try {
			right = ValueUtil.assertBooleanOrNull(evaluate(parent.getRight()));
		} catch(Exception e) {
			addError(renderer.render(parent.getRight()) + " is not a boolean value.", getFeature());
			error = true;
		}
		if(error)
			return null;

		Boolean result = null;
		
		if(parent.getOperator() instanceof EqualsOperator)
			result = BooleanLogic.equals(left, right);
		
		if(parent.getOperator() instanceof NotEqualsOperator)
			result = BooleanLogic.unequals(left, right);
		
		if(parent.getOperator() instanceof AndOperator)
			result = BooleanLogic.and(left, right);
		
		if(parent.getOperator() instanceof OrOperator)
			result = BooleanLogic.or(left, right);
		
		if(parent.getOperator() instanceof XOrOperator)
			result = BooleanLogic.xor(left, right);
		
		if(parent.getOperator() instanceof ImplicationOperator)
			result = BooleanLogic.implies(left, right);
		
		return ValueUtil.createBooleanLiteralOrNull(result);
	}
	
	public ValueSpecification evaluate(BooleanUnit e) {
		if(e instanceof BooleanLiteral)
			return evaluate((BooleanLiteral)e);
		if(e instanceof Negation)
			return evaluate((Negation)e);
		if(e instanceof RelationalExpression)
			return evaluate((RelationalExpression)e);
		return null;
	}
	
	public BooleanLiteral evaluate(Negation n) {
		try {
			Boolean value = ValueUtil.assertBooleanOrNull(evaluate(n.getValue()));
			return ValueUtil.createBooleanLiteralOrNull(value);
		} catch(Exception e) {
			addError(renderer.render(n.getValue()) + " is not a boolean value.", getFeature());
			return null;
		}
	}
	
	public BooleanLiteral evaluate(BooleanLiteral b) {
		return b;
	}
	
	public ValueSpecification evaluateBinaryRelational(Comparison e) {		
		ValueSpecification left = evaluate(e.getLeft());
		ValueSpecification right = evaluate(e.getRight());
		
		Integer comparison;
		try {
			comparison = RelationalLogic.compare(left, right);
		} catch(Exception ex) {
			addError("LHS and RHS of condition are not comparable: " + renderer.render(e), getFeature());
			return null;
		}
		Boolean result = null;
		if(e.getOperator() instanceof GreaterThanOperator)
			result = RelationalLogic.greater(comparison);
		if(e.getOperator() instanceof GreaterOrEqualThanOperator)
			result = RelationalLogic.greaterOrEqual(comparison);
		if(e.getOperator() instanceof LessThanOperator)
			result = RelationalLogic.less(comparison);
		if(e.getOperator() instanceof LessOrEqualThanOperator)
			result = RelationalLogic.lessOrEqual(comparison);
		if(e.getOperator() instanceof EqualsOperator)
			result = RelationalLogic.equals(comparison);
		if(e.getOperator() instanceof NotEqualsOperator)
			result = RelationalLogic.notEquals(comparison);
		
		return ValueUtil.createBooleanLiteralOrNull(result);
	}
	
	public ValueSpecification evaluate(RelationalExpression e) {
		if(e instanceof ComparableExpression)
			return evaluate((ComparableExpression)e);
		
		return evaluateBinaryRelational(e);
	}
	
	public ValueSpecification evaluate(ComparableExpression e) {
		if(e instanceof ParenthesizedExpression)
			return evaluate((ParenthesizedExpression)e);
		
		if(e instanceof ArithmeticExpression)
			return evaluate((ArithmeticExpression)e);
		
		if(e instanceof ValueSpecification)
			return evaluate((ValueSpecification)e);
		
		return null;
	}
	
	public ValueSpecification evaluate(ParenthesizedExpression e) {
		return evaluate(e.getValue());
	}
	
	public ValueSpecification evaluate(ValueSpecification e) {
		if(e instanceof LiteralValueExpression)
			return evaluate((LiteralValueExpression)e);
		if(e instanceof InstanceSpecificationExpression)
			return evaluate((InstanceSpecificationExpression)e);
		
		return null;
	}
	
	public InstanceSpecificationExpression evaluate(InstanceSpecificationExpression e) {
		return e;
	}
	
	public ValueSpecification evaluate(LiteralValueExpression e) {
		if(e instanceof NumberLiteral)
			return evaluate((NumberLiteral)e);
		if(e instanceof BooleanLiteral)
			return evaluate((BooleanLiteral)e);		
		if(e instanceof NullLiteral)
			return evaluate((NullLiteral)e);
		if(e instanceof StringLiteral)
			return evaluate((StringLiteral)e);
		if(e instanceof UnlimitedLiteral)
			return evaluate((UnlimitedLiteral)e);
		
		return null;
	}

	public NullLiteral evaluate(NullLiteral literal) {
		return literal;
	}
	
	public UnlimitedLiteral evaluate(UnlimitedLiteral literal) {
		return literal;
	}
	
	public StringLiteral evaluate(StringLiteral literal) {
		return literal;
	}
	
	/**
	 * ARITHMETIC EXPRESSIONS 
	 *
	 **/
	
	public NumberLiteral evaluate(ArithmeticExpression e) {
		if(e instanceof AdditiveExpression)
			return evaluate((AdditiveExpression)e);
		
		return null;
	}
	
	public NumberLiteral evaluateBinaryArithmetic(Implication parent) {

		BigDecimal left = ValueUtil.getNumberOrNull(evaluate(parent.getLeft()));
		BigDecimal right = ValueUtil.getNumberOrNull(evaluate(parent.getRight()));
		
		BigDecimal result = null;
		
		if(parent.getOperator() instanceof SubstractionOperator)
			result = NumericLogic.subtract(left, right);
		
		else if(parent.getOperator() instanceof AdditionOperator)
			result = NumericLogic.add(left, right);
		
		if(parent.getOperator() instanceof MultiplicationOperator)
			result = NumericLogic.multiply(left, right);
		
		if(parent.getOperator() instanceof DivisionOperator)
			result = NumericLogic.divide(left, right);
		
		if(parent.getOperator() instanceof ModulusOperator)
			result = NumericLogic.modulo(left, right);
		
		return ValueUtil.createNumberLiteralOrNull(result);
	}
	
	public NumberLiteral evaluate(AdditiveExpression e) {
		if(e instanceof MultiplicativeExpression)
			return evaluate((MultiplicativeExpression)e);
		
		return evaluateBinaryArithmetic(e);
	}
	
	public NumberLiteral evaluate(MultiplicativeExpression e) {
		if(e instanceof NumberExpression)
			return evaluate((NumberExpression)e);

		return evaluateBinaryArithmetic(e);
	}
	
	public NumberLiteral evaluate(NumberExpression e) {
		if(e instanceof NumberLiteral)
			return evaluate((NumberLiteral)e);
		if(e instanceof NumberFunction)
			return evaluate((NumberFunction)e);
		
		return null;
	}
	
	public NumberLiteral evaluate(NumberFunction e) {
		if(e instanceof MaximumFunction)
			return evaluate((MaximumFunction)e);
		if(e instanceof MinimumFunction)
			return evaluate((MinimumFunction)e);
		if(e instanceof AverageFunction)
			return evaluate((AverageFunction)e);
		if(e instanceof SumFunction)
			return evaluate((SumFunction)e);
		if(e instanceof ExponentialFunction)
			return evaluate((ExponentialFunction)e);
		if(e instanceof AbsoluteFunction)
			return evaluate((AbsoluteFunction)e);
		if(e instanceof NaturalLogarithmFunction)
			return evaluate((NaturalLogarithmFunction)e);
		if(e instanceof CommonLogarithmFunction)
			return evaluate((CommonLogarithmFunction)e);
		
		return null;
	}
	
	public NumberLiteral evaluateNumberList(NumberFunction e, List<NumberExpression> values) {
		List<BigDecimal> evaluationResults = new ArrayList<>();
		NumberLiteral cur;
		for(NumberExpression numberExpression : values) {
			cur = evaluate(numberExpression);
			if(cur != null && cur.getValue() != null)
				evaluationResults.add(cur.getValue());
		}
		BigDecimal result = null;
		
		if(e.getOperator() instanceof MinOperator) 
			result = NumericLogic.min(evaluationResults);
		else if(e.getOperator() instanceof MaxOperator) 
			result = NumericLogic.max(evaluationResults);
		else if(e.getOperator() instanceof SumOperator) 
			result = NumericLogic.sum(evaluationResults);
		else if(e.getOperator() instanceof AvgOperator) 
			result = NumericLogic.avg(evaluationResults);
		
		return ValueUtil.createNumberLiteralOrNull(result);
	}
	
	public NumberLiteral evaluate(MinimumFunction e) {
		return evaluateNumberList(e, e.getValues());
	}
	
	public NumberLiteral evaluate(MaximumFunction e) {
		return evaluateNumberList(e, e.getValues());
	}
	
	public NumberLiteral evaluate(AverageFunction e) {
		return evaluateNumberList(e, e.getValues());
	}
	
	public NumberLiteral evaluate(SumFunction e) {
		return evaluateNumberList(e, e.getValues());
	}
	
	public NumberLiteral evaluate(ExponentialFunction e) {
		NumberLiteral base = evaluate(e.getBase());
		NumberLiteral exp = evaluate(e.getExponent());
		if(base == null || exp == null)
			return null;
		return ValueUtil.createNumberLiteralOrNull(NumericLogic.pow(base.getValue(), exp.getValue()));
	}
	
	public NumberLiteral evaluate(AbsoluteFunction e) {		
		NumberLiteral value = evaluate(e.getValue());
		if(value == null)
			return null;
		return ValueUtil.createNumberLiteralOrNull(NumericLogic.abs(value.getValue()));
	}
	
	public NumberLiteral evaluate(NaturalLogarithmFunction e) {
		NumberLiteral value = evaluate(e.getValue());
		if(value == null)
			return null;
		return ValueUtil.createNumberLiteralOrNull(NumericLogic.ln(value.getValue()));
	}
	
	public NumberLiteral evaluate(CommonLogarithmFunction e) {
		NumberLiteral value = evaluate(e.getValue());
		if(value == null)
			return null;
		return ValueUtil.createNumberLiteralOrNull(NumericLogic.log(value.getValue()));
	}
	
	public NumberLiteral evaluate(NumberLiteral e) {
		return e;
	}

	public EStructuralFeature getFeature() {
		return feature;
	}

	public void setFeature(EStructuralFeature feature) {
		this.feature = feature;
	}
}
