import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';

Given ('um administrador logado', ()=> {
    cy.visit("/");
});