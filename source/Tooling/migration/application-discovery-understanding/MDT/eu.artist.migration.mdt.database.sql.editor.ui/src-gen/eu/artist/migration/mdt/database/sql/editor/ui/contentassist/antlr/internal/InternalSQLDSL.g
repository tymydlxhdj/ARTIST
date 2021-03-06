/*
* generated by Xtext
*/
grammar InternalSQLDSL;

options {
	superClass=AbstractInternalContentAssistParser;
	
}

@lexer::header {
package eu.artist.migration.mdt.database.sql.editor.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package eu.artist.migration.mdt.database.sql.editor.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import eu.artist.migration.mdt.database.sql.editor.services.SQLDSLGrammarAccess;

}

@parser::members {
 
 	private SQLDSLGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(SQLDSLGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleModel
entryRuleModel 
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getModelAccess().getGroup()); }
(rule__Model__Group__0)
{ after(grammarAccess.getModelAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleInsertSQL
entryRuleInsertSQL 
:
{ before(grammarAccess.getInsertSQLRule()); }
	 ruleInsertSQL
{ after(grammarAccess.getInsertSQLRule()); } 
	 EOF 
;

// Rule InsertSQL
ruleInsertSQL
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getInsertSQLAccess().getGroup()); }
(rule__InsertSQL__Group__0)
{ after(grammarAccess.getInsertSQLAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleDatabase
entryRuleDatabase 
:
{ before(grammarAccess.getDatabaseRule()); }
	 ruleDatabase
{ after(grammarAccess.getDatabaseRule()); } 
	 EOF 
;

// Rule Database
ruleDatabase
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getDatabaseAccess().getGroup()); }
(rule__Database__Group__0)
{ after(grammarAccess.getDatabaseAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTab
entryRuleTab 
:
{ before(grammarAccess.getTabRule()); }
	 ruleTab
{ after(grammarAccess.getTabRule()); } 
	 EOF 
;

// Rule Tab
ruleTab
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTabAccess().getGroup()); }
(rule__Tab__Group__0)
{ after(grammarAccess.getTabAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleColumn
entryRuleColumn 
:
{ before(grammarAccess.getColumnRule()); }
	 ruleColumn
{ after(grammarAccess.getColumnRule()); } 
	 EOF 
;

// Rule Column
ruleColumn
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getColumnAccess().getGroup()); }
(rule__Column__Group__0)
{ after(grammarAccess.getColumnAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleField
entryRuleField 
:
{ before(grammarAccess.getFieldRule()); }
	 ruleField
{ after(grammarAccess.getFieldRule()); } 
	 EOF 
;

// Rule Field
ruleField
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getFieldAccess().getGroup()); }
(rule__Field__Group__0)
{ after(grammarAccess.getFieldAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleSpace
entryRuleSpace 
:
{ before(grammarAccess.getSpaceRule()); }
	 ruleSpace
{ after(grammarAccess.getSpaceRule()); } 
	 EOF 
;

// Rule Space
ruleSpace
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getSpaceAccess().getSpaceKeyword()); }
(
	' ' 
)*
{ after(grammarAccess.getSpaceAccess().getSpaceKeyword()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEStringAsInt
entryRuleEStringAsInt 
:
{ before(grammarAccess.getEStringAsIntRule()); }
	 ruleEStringAsInt
{ after(grammarAccess.getEStringAsIntRule()); } 
	 EOF 
;

// Rule EStringAsInt
ruleEStringAsInt
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEStringAsIntAccess().getINTTerminalRuleCall()); }
	RULE_INT
{ after(grammarAccess.getEStringAsIntAccess().getINTTerminalRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEString
entryRuleEString 
:
{ before(grammarAccess.getEStringRule()); }
	 ruleEString
{ after(grammarAccess.getEStringRule()); } 
	 EOF 
;

// Rule EString
ruleEString
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall()); }
	RULE_STRING
{ after(grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleother
entryRuleother 
:
{ before(grammarAccess.getOtherRule()); }
	 ruleother
{ after(grammarAccess.getOtherRule()); } 
	 EOF 
;

// Rule other
ruleother
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getOtherAccess().getAlternatives()); }
(rule__Other__Alternatives)
{ after(grammarAccess.getOtherAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__Field__ValueAlternatives_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldAccess().getValueEStringParserRuleCall_1_0_0()); }
	ruleEString
{ after(grammarAccess.getFieldAccess().getValueEStringParserRuleCall_1_0_0()); }
)

    |(
{ before(grammarAccess.getFieldAccess().getValueAlternatives_1_0_1()); }
(rule__Field__ValueAlternatives_1_0_1)
{ after(grammarAccess.getFieldAccess().getValueAlternatives_1_0_1()); }
)

    |(
{ before(grammarAccess.getFieldAccess().getValueCAST_HEXA_VALUE_TO_DATETIMETerminalRuleCall_1_0_2()); }
	RULE_CAST_HEXA_VALUE_TO_DATETIME
{ after(grammarAccess.getFieldAccess().getValueCAST_HEXA_VALUE_TO_DATETIMETerminalRuleCall_1_0_2()); }
)

    |(
{ before(grammarAccess.getFieldAccess().getValueEStringAsIntParserRuleCall_1_0_3()); }
	ruleEStringAsInt
{ after(grammarAccess.getFieldAccess().getValueEStringAsIntParserRuleCall_1_0_3()); }
)

    |(
{ before(grammarAccess.getFieldAccess().getValueESTRING_AS_DOUBLETerminalRuleCall_1_0_4()); }
	RULE_ESTRING_AS_DOUBLE
{ after(grammarAccess.getFieldAccess().getValueESTRING_AS_DOUBLETerminalRuleCall_1_0_4()); }
)

    |(
{ before(grammarAccess.getFieldAccess().getValueNULLKeyword_1_0_5()); }

	'NULL' 

{ after(grammarAccess.getFieldAccess().getValueNULLKeyword_1_0_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Field__ValueAlternatives_1_0_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldAccess().getValueN_SPEC_CHARTerminalRuleCall_1_0_1_0()); }
	RULE_N_SPEC_CHAR
{ after(grammarAccess.getFieldAccess().getValueN_SPEC_CHARTerminalRuleCall_1_0_1_0()); }
)

    |(
{ before(grammarAccess.getFieldAccess().getValueN_ESTRINGTerminalRuleCall_1_0_1_1()); }
	RULE_N_ESTRING
{ after(grammarAccess.getFieldAccess().getValueN_ESTRINGTerminalRuleCall_1_0_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Other__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOtherAccess().getML_COMMENTTerminalRuleCall_0()); }
	RULE_ML_COMMENT
{ after(grammarAccess.getOtherAccess().getML_COMMENTTerminalRuleCall_0()); }
)

    |(
{ before(grammarAccess.getOtherAccess().getOTHER_COMMANDTerminalRuleCall_1()); }
	RULE_OTHER_COMMAND
{ after(grammarAccess.getOtherAccess().getOTHER_COMMANDTerminalRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__Model__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__0__Impl
	rule__Model__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getModelAction_0()); }
(

)
{ after(grammarAccess.getModelAccess().getModelAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__1__Impl
	rule__Model__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getOtherParserRuleCall_1()); }
(	ruleother)*
{ after(grammarAccess.getModelAccess().getOtherParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getInsertSQLAssignment_2()); }
(rule__Model__InsertSQLAssignment_2)*
{ after(grammarAccess.getModelAccess().getInsertSQLAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__InsertSQL__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group__0__Impl
	rule__InsertSQL__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getInsertSQLAction_0()); }
(

)
{ after(grammarAccess.getInsertSQLAccess().getInsertSQLAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group__1__Impl
	rule__InsertSQL__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getINSERTKeyword_1()); }

	'INSERT' 

{ after(grammarAccess.getInsertSQLAccess().getINSERTKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group__2__Impl
	rule__InsertSQL__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getGroup_2()); }
(rule__InsertSQL__Group_2__0)
{ after(grammarAccess.getInsertSQLAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getOtherParserRuleCall_3()); }
(	ruleother)*
{ after(grammarAccess.getInsertSQLAccess().getOtherParserRuleCall_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__InsertSQL__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__0__Impl
	rule__InsertSQL__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_0()); }
	ruleSpace
{ after(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__1__Impl
	rule__InsertSQL__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getDatabaseAssignment_2_1()); }
(rule__InsertSQL__DatabaseAssignment_2_1)
{ after(grammarAccess.getInsertSQLAccess().getDatabaseAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__2__Impl
	rule__InsertSQL__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getFullStopKeyword_2_2()); }

	'.' 

{ after(grammarAccess.getInsertSQLAccess().getFullStopKeyword_2_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__3__Impl
	rule__InsertSQL__Group_2__4
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getTabAssignment_2_3()); }
(rule__InsertSQL__TabAssignment_2_3)
{ after(grammarAccess.getInsertSQLAccess().getTabAssignment_2_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__4__Impl
	rule__InsertSQL__Group_2__5
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_4()); }
	ruleSpace
{ after(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__5__Impl
	rule__InsertSQL__Group_2__6
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getLeftParenthesisKeyword_2_5()); }

	'(' 

{ after(grammarAccess.getInsertSQLAccess().getLeftParenthesisKeyword_2_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__6__Impl
	rule__InsertSQL__Group_2__7
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getColumnsAssignment_2_6()); }
(rule__InsertSQL__ColumnsAssignment_2_6)
{ after(grammarAccess.getInsertSQLAccess().getColumnsAssignment_2_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__7__Impl
	rule__InsertSQL__Group_2__8
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getGroup_2_7()); }
(rule__InsertSQL__Group_2_7__0)*
{ after(grammarAccess.getInsertSQLAccess().getGroup_2_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__8
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__8__Impl
	rule__InsertSQL__Group_2__9
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__8__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getRightParenthesisKeyword_2_8()); }

	')' 

{ after(grammarAccess.getInsertSQLAccess().getRightParenthesisKeyword_2_8()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__9
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__9__Impl
	rule__InsertSQL__Group_2__10
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__9__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_9()); }
	ruleSpace
{ after(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_9()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__10
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__10__Impl
	rule__InsertSQL__Group_2__11
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__10__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getVALUESKeyword_2_10()); }

	'VALUES' 

{ after(grammarAccess.getInsertSQLAccess().getVALUESKeyword_2_10()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__11
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__11__Impl
	rule__InsertSQL__Group_2__12
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__11__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_11()); }
	ruleSpace
{ after(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_11()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__12
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__12__Impl
	rule__InsertSQL__Group_2__13
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__12__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getLeftParenthesisKeyword_2_12()); }

	'(' 

{ after(grammarAccess.getInsertSQLAccess().getLeftParenthesisKeyword_2_12()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__13
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__13__Impl
	rule__InsertSQL__Group_2__14
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__13__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getFieldsAssignment_2_13()); }
(rule__InsertSQL__FieldsAssignment_2_13)
{ after(grammarAccess.getInsertSQLAccess().getFieldsAssignment_2_13()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__14
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__14__Impl
	rule__InsertSQL__Group_2__15
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__14__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getGroup_2_14()); }
(rule__InsertSQL__Group_2_14__0)*
{ after(grammarAccess.getInsertSQLAccess().getGroup_2_14()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2__15
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2__15__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2__15__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getRightParenthesisKeyword_2_15()); }

	')' 

{ after(grammarAccess.getInsertSQLAccess().getRightParenthesisKeyword_2_15()); }
)

;
finally {
	restoreStackSize(stackSize);
}


































rule__InsertSQL__Group_2_7__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2_7__0__Impl
	rule__InsertSQL__Group_2_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2_7__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_7_0()); }
	ruleSpace
{ after(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_7_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2_7__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2_7__1__Impl
	rule__InsertSQL__Group_2_7__2
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2_7__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getCommaKeyword_2_7_1()); }

	',' 

{ after(grammarAccess.getInsertSQLAccess().getCommaKeyword_2_7_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2_7__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2_7__2__Impl
	rule__InsertSQL__Group_2_7__3
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2_7__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_7_2()); }
	ruleSpace
{ after(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_7_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2_7__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2_7__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2_7__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getColumnsAssignment_2_7_3()); }
(rule__InsertSQL__ColumnsAssignment_2_7_3)
{ after(grammarAccess.getInsertSQLAccess().getColumnsAssignment_2_7_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__InsertSQL__Group_2_14__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2_14__0__Impl
	rule__InsertSQL__Group_2_14__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2_14__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_14_0()); }
	ruleSpace
{ after(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_14_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2_14__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2_14__1__Impl
	rule__InsertSQL__Group_2_14__2
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2_14__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getCommaKeyword_2_14_1()); }

	',' 

{ after(grammarAccess.getInsertSQLAccess().getCommaKeyword_2_14_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2_14__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2_14__2__Impl
	rule__InsertSQL__Group_2_14__3
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2_14__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_14_2()); }
	ruleSpace
{ after(grammarAccess.getInsertSQLAccess().getSpaceParserRuleCall_2_14_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__InsertSQL__Group_2_14__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__InsertSQL__Group_2_14__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__Group_2_14__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getFieldsAssignment_2_14_3()); }
(rule__InsertSQL__FieldsAssignment_2_14_3)
{ after(grammarAccess.getInsertSQLAccess().getFieldsAssignment_2_14_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__Database__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Database__Group__0__Impl
	rule__Database__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Database__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDatabaseAccess().getDatabaseAction_0()); }
(

)
{ after(grammarAccess.getDatabaseAccess().getDatabaseAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Database__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Database__Group__1__Impl
	rule__Database__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Database__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDatabaseAccess().getLeftSquareBracketKeyword_1()); }

	'[' 

{ after(grammarAccess.getDatabaseAccess().getLeftSquareBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Database__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Database__Group__2__Impl
	rule__Database__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Database__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDatabaseAccess().getValueAssignment_2()); }
(rule__Database__ValueAssignment_2)
{ after(grammarAccess.getDatabaseAccess().getValueAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Database__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Database__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Database__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDatabaseAccess().getRightSquareBracketKeyword_3()); }

	']' 

{ after(grammarAccess.getDatabaseAccess().getRightSquareBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__Tab__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Tab__Group__0__Impl
	rule__Tab__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Tab__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTabAccess().getTabAction_0()); }
(

)
{ after(grammarAccess.getTabAccess().getTabAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Tab__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Tab__Group__1__Impl
	rule__Tab__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Tab__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTabAccess().getLeftSquareBracketKeyword_1()); }

	'[' 

{ after(grammarAccess.getTabAccess().getLeftSquareBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Tab__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Tab__Group__2__Impl
	rule__Tab__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Tab__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTabAccess().getValueAssignment_2()); }
(rule__Tab__ValueAssignment_2)
{ after(grammarAccess.getTabAccess().getValueAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Tab__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Tab__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Tab__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTabAccess().getRightSquareBracketKeyword_3()); }

	']' 

{ after(grammarAccess.getTabAccess().getRightSquareBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__Column__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Column__Group__0__Impl
	rule__Column__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Column__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getColumnAccess().getColumnAction_0()); }
(

)
{ after(grammarAccess.getColumnAccess().getColumnAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Column__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Column__Group__1__Impl
	rule__Column__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Column__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getColumnAccess().getLeftSquareBracketKeyword_1()); }

	'[' 

{ after(grammarAccess.getColumnAccess().getLeftSquareBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Column__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Column__Group__2__Impl
	rule__Column__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Column__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getColumnAccess().getValueAssignment_2()); }
(rule__Column__ValueAssignment_2)
{ after(grammarAccess.getColumnAccess().getValueAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Column__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Column__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Column__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getColumnAccess().getRightSquareBracketKeyword_3()); }

	']' 

{ after(grammarAccess.getColumnAccess().getRightSquareBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}










rule__Field__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Field__Group__0__Impl
	rule__Field__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Field__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldAccess().getFieldAction_0()); }
(

)
{ after(grammarAccess.getFieldAccess().getFieldAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Field__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Field__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Field__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldAccess().getValueAssignment_1()); }
(rule__Field__ValueAssignment_1)
{ after(grammarAccess.getFieldAccess().getValueAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}







rule__Model__InsertSQLAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getInsertSQLInsertSQLParserRuleCall_2_0()); }
	ruleInsertSQL{ after(grammarAccess.getModelAccess().getInsertSQLInsertSQLParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__DatabaseAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getDatabaseDatabaseParserRuleCall_2_1_0()); }
	ruleDatabase{ after(grammarAccess.getInsertSQLAccess().getDatabaseDatabaseParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__TabAssignment_2_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getTabTabParserRuleCall_2_3_0()); }
	ruleTab{ after(grammarAccess.getInsertSQLAccess().getTabTabParserRuleCall_2_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__ColumnsAssignment_2_6
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getColumnsColumnParserRuleCall_2_6_0()); }
	ruleColumn{ after(grammarAccess.getInsertSQLAccess().getColumnsColumnParserRuleCall_2_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__ColumnsAssignment_2_7_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getColumnsColumnParserRuleCall_2_7_3_0()); }
	ruleColumn{ after(grammarAccess.getInsertSQLAccess().getColumnsColumnParserRuleCall_2_7_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__FieldsAssignment_2_13
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getFieldsFieldParserRuleCall_2_13_0()); }
	ruleField{ after(grammarAccess.getInsertSQLAccess().getFieldsFieldParserRuleCall_2_13_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__InsertSQL__FieldsAssignment_2_14_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getInsertSQLAccess().getFieldsFieldParserRuleCall_2_14_3_0()); }
	ruleField{ after(grammarAccess.getInsertSQLAccess().getFieldsFieldParserRuleCall_2_14_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Database__ValueAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDatabaseAccess().getValueIDTerminalRuleCall_2_0()); }
	RULE_ID{ after(grammarAccess.getDatabaseAccess().getValueIDTerminalRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Tab__ValueAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTabAccess().getValueIDTerminalRuleCall_2_0()); }
	RULE_ID{ after(grammarAccess.getTabAccess().getValueIDTerminalRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Column__ValueAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getColumnAccess().getValueIDTerminalRuleCall_2_0()); }
	RULE_ID{ after(grammarAccess.getColumnAccess().getValueIDTerminalRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Field__ValueAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFieldAccess().getValueAlternatives_1_0()); }
(rule__Field__ValueAlternatives_1_0)
{ after(grammarAccess.getFieldAccess().getValueAlternatives_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_ESTRING_AS_DOUBLE : ('0'..'9')+ '.' ('0'..'9')+;

RULE_CAST_HEXA_VALUE_TO_DATETIME : 'CAST(' '0' ('x'|'X') ('0'..'9'|'a'..'f'|'A'..'F')+ ' '* 'AS' ' '* 'DateTime)';

RULE_N_ESTRING : 'N' RULE_STRING;

RULE_N_SPEC_CHAR : ('N\'' ('a'..'z'|'A'..'Z'|'0'..'9'|'-'|'\\')+ '\''|'"' ('a'..'z'|'A'..'Z'|'0'..'9'|'-'|'\\')+ '"');

RULE_OTHER_COMMAND : (('USE'|'SET'|'CREATE'|'ALTER') ( options {greedy=false;} : . )*'GO'|'GO'|('print' ' '* RULE_STRING)*);

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


