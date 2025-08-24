---
layout: page
title: Contact Us
permalink: /en/contact/
lang: en
ref: contact
---

<div class="contact-modern" style="min-height: 100vh;">
    <!-- Hero Section -->
    <section class="contact-hero" style="background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%); padding: 80px 0; min-height: 500px;">
        <div class="wrapper" style="max-width: 1200px; margin: 0 auto; padding: 0 20px; display: grid; grid-template-columns: 1fr 1fr; gap: 60px; align-items: center;">
            <div class="hero-content">
                <h1>Contact Us</h1>
                <p class="hero-description">Have questions or want to collaborate? We'd love to hear from you. Fill out the form below or reach out to us directly via email.</p>
            </div>
            <div class="contact-visual">
                <div class="contact-illustration">
                    <div class="envelope-icon">
                        <svg width="120" height="80" viewBox="0 0 120 80" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <rect x="10" y="20" width="100" height="60" rx="4" fill="#f8f9fa" stroke="#dc2626" stroke-width="2"/>
                            <path d="M10 25 L60 50 L110 25" stroke="#dc2626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <circle cx="60" cy="45" r="3" fill="#dc2626"/>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Form Section -->
    <section class="contact-form-section" style="padding: 100px 0; background: #ffffff; min-height: 600px;">
        <div class="wrapper" style="max-width: 1200px; margin: 0 auto; padding: 0 20px;">
            <div class="contact-container" style="display: flex; flex-wrap: wrap; gap: 60px; justify-content: space-between;">
                <!-- Contact Form -->
                <div class="contact-form-card" style="background: #ffffff; border-radius: 20px; padding: 40px; box-shadow: 0 20px 60px rgba(0, 0, 0, 0.08); border: 1px solid #f1f5f9; min-width: 500px; flex: 1;">
                    <div class="form-header" style="margin-bottom: 32px; text-align: center;">
                        <h2 style="font-size: 1.875rem; font-weight: 700; color: #1a1a1a; margin-bottom: 8px;">Send a Message</h2>
                        <p style="color: #6b7280; font-size: 1rem; margin: 0;">We typically respond to all messages within 24 hours</p>
                    </div>
                    <form class="contact-form" action="#" method="post">
                        <div class="form-group">
                            <label for="name">Name *</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email Address *</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="organization">Organization/Company</label>
                            <input type="text" id="organization" name="organization">
                        </div>
                        
                        <div class="form-group">
                            <label for="subject">Subject *</label>
                            <select id="subject" name="subject" required>
                                <option value="">Please select a subject</option>
                                <option value="general">General Inquiry</option>
                                <option value="research">Research Collaboration</option>
                                <option value="student">Student Application</option>
                                <option value="media">Media Inquiry</option>
                                <option value="other">Other</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="message">Message *</label>
                            <textarea id="message" name="message" rows="6" required placeholder="Please describe your question or request in detail..."></textarea>
                        </div>
                        
                        <button type="submit" class="submit-btn">
                            <span>Send Message</span>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M7 17L17 7M17 7H7M17 7V17" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                    </form>
                </div>
                
                <!-- Contact Info -->
                <div class="contact-info-card" style="background: linear-gradient(135deg, #f8fafc 0%, #f1f5f9 100%); border-radius: 20px; padding: 40px; border: 1px solid #e2e8f0; min-width: 350px; max-width: 400px;">
                    <div class="info-header">
                        <h2>Contact Information</h2>
                        <p>Prefer to reach out directly? Here are our contact details</p>
                    </div>
                    
                    <div class="contact-methods">
                        <div class="contact-method">
                            <div class="method-icon">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4 4H20C21.1 4 22 4.9 22 6V18C22 19.1 21.1 20 20 20H4C2.9 20 2 19.1 2 18V6C2 4.9 2.9 4 4 4Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <polyline points="22,6 12,13 2,6" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </div>
                            <div class="method-details">
                                <h3>Email</h3>
                                <p><a href="mailto:contact@pkuxlab.org">contact@pkuxlab.org</a></p>
                                <span>General inquiries and questions</span>
                            </div>
                        </div>
                        
                        <div class="contact-method">
                            <div class="method-icon">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21 10C21 17 12 23 12 23S3 17 3 10C3 5.03 7.03 1 12 1S21 5.03 21 10Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    <circle cx="12" cy="10" r="3" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </div>
                            <div class="method-details">
                                <h3>Address</h3>
                                <p>School of Computer Science<br>Peking University<br>Beijing 100871, China</p>
                                <span>Haidian District</span>
                            </div>
                        </div>
                        
                        <div class="contact-method">
                            <div class="method-icon">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="12" cy="12" r="10" stroke="currentColor" stroke-width="2"/>
                                    <polyline points="12,6 12,12 16,14" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </div>
                            <div class="method-details">
                                <h3>Response Time</h3>
                                <p>Usually within 24 hours</p>
                                <span>Faster response during business days</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="social-connect">
                        <h3>Follow Us</h3>
                        <div class="social-links">
                            <a href="https://github.com/pkuxlab" target="_blank" class="social-link">
                                <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
                                    <path d="M12 0C5.37 0 0 5.37 0 12C0 17.31 3.435 21.795 8.205 23.385C8.805 23.49 9.03 23.13 9.03 22.815C9.03 22.53 9.015 21.585 9.015 20.55C6 21.135 5.22 19.845 4.98 19.17C4.845 18.825 4.26 17.7 3.75 17.415C3.33 17.19 2.73 16.605 3.735 16.59C4.68 16.575 5.355 17.49 5.58 17.85C6.66 19.725 8.385 19.215 9.075 18.9C9.18 18.12 9.495 17.595 9.84 17.295C7.17 16.995 4.38 15.96 4.38 11.37C4.38 10.065 4.845 8.985 5.61 8.145C5.49 7.845 5.07 6.615 5.73 4.965C5.73 4.965 6.735 4.65 9.03 6.195C9.99 5.925 11.01 5.79 12.03 5.79C13.05 5.79 14.07 5.925 15.03 6.195C17.325 4.635 18.33 4.965 18.33 4.965C18.99 6.615 18.57 7.845 18.45 8.145C19.215 8.985 19.68 10.05 19.68 11.37C19.68 15.975 16.875 16.995 14.205 17.295C14.64 17.67 15.015 18.39 15.015 19.515C15.015 21.12 15 22.41 15 22.815C15 23.13 15.225 23.505 15.825 23.385C20.565 21.795 24 17.295 24 12C24 5.37 18.63 0 12 0Z"/>
                                </svg>
                                GitHub
                            </a>
                            <a href="https://twitter.com/pkuxlab" target="_blank" class="social-link">
                                Twitter
                            </a>
                            <a href="https://scholar.google.com/citations?user=pkuxlab" target="_blank" class="social-link">
                                Google Scholar
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>