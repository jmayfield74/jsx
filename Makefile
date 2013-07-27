# -*- mode: Makefile; fill-column: 80; comment-column: 75; -*-

ERL = $(shell which erl)

ERLFLAGS= -pa $(CURDIR)/.eunit -pa $(CURDIR)/ebin -pa $(CURDIR)/*/ebin

REBAR = $(shell which rebar)

all: compile

compile:
	@$(REBAR) compile

get-deps:
	@$(REBAR) get-deps

clean:
	@$(REBAR) clean

